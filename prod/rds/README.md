# terraform

#### Terraform instalation:
  https://learn.hashicorp.com/terraform/getting-started/install.html

##### Export your aws keys:

```
export AWS_ACCESS_KEY_ID=;export AWS_SECRET_ACCESS_KEY=;export AWS_DEFAULT_REGION=eu-central-1
```

### Let's create resources and in a second step see how to manage all environment.

The folder structure is:
```
terraform/
    |
. . . development/
        |
. . . . . rds/
             |
. . . . .  ...  postgres/
              |
. . . . .  .... oracle/
 
    |
. . stage/
       |
.    ... rds/

```

### Usage:

```
Case: Creating a new RDS on the development environment

1- $cd terraform/development/rds/postgres

2- Copy the template file, put the values of the project/rds, and change the name of the template file.

   $ cp -av projects/template.tf  my-projecto.tf
   $ sed -i '' 's/CHANGE_HERE/myprojecto/g' my-projecto.tf
   $ sed -i '' 's/CHANGE_HERE_USERNAME/myprojecto_ddl/g' my-projecto.tf
   $ sed -i '' 's/YOUR_PASSWORD/asdasdasdasd/g' my-projecto.tf


*You can use dash "-" only for the identify variable --> "my-project", not the name of the db or the username. For that
  you should you underscore = "_" --> "my_project"

3- Download the modules
   $terraform init

4- Run the plan command, check if It's ok
   $terraform plan

5- If yes, open the merge request or run  the apply command
   $ terraform apply

6- After that copy the my-project.tf file to the projects folder and remove the the old one

7- Editing the service user test scripts  (For Postgres only):

   $ cd scripts
   $ bash -x create_sql_scripts.sh "username" "db_name" "password"
   $ aws rds describe-db-instances --db-instance-identifier $DB --query 'DBInstances[*].Endpoint.[Address]' --output text # To get the rds url
   $ kubectl -n infrastructure cp test-svc-user.sql  $POD://
   $ kubectl -n infrastructure cp service-user.sql  $POD://
   $ kubectl -n infrastructure exec -ti $POD -- bash
   $ export HOST="";export USER="";export DB="";export PGPASSWORD
   $ psql -h $HOST -U $USER -w $DB -c "\i service-user.sql"    # Create the service user
   $ psql -h $HOST -U $USER -w $DB -c "\i test-svc-user.sql"    # Run rw operations with the svc user

```
