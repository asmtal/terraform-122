provider "aws" {
#  access_key = ""
#  secret_key = ""
  region = "eu-central-1"
}

#data "terraform_remote_state" "network" {
#  backend = "s3"
#  config = {
#    bucket = "<s3-bucket-name>"
#    key    = "terraform/terraform.tfstate"
#    region = "sa-central-1"
#  }
#}
