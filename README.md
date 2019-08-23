# terraform

#### Terraform instalation:
  https://learn.hashicorp.com/terraform/getting-started/install.html

##### Export your aws keys:

```
export AWS_ACCESS_KEY_ID=;export AWS_SECRET_ACCESS_KEY=;export AWS_DEFAULT_REGION=sa-east-1
```


### Look inside the docs folder for more instructions of how to run our infra with Terraform 
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
