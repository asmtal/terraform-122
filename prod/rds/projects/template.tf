# ----     Change here  -----------
variable "identifier" {
  type   = "string"
  default = "CHANGE_HERE"  #ex: default = "myproject"
}

variable "name" {
  type     = "string"
  default = "CHANGE_HERE"  #ex: default = "myproject_prod"
}

variable "username" {
  type     = "string"
  default = "CHANGE_HERE_ddl"  #ex: default = "myproject_prod_user"
}

variable "password" {
  type     = "string"
  default  = "YOUR_PASSWORD"

}

variable "final_snapshot_identifier" {
  type     = "string"
  default = "CHANGE_HERE-final-snapshot"  #ex: default = "myproject_prod_user"

}

variable "tags" {
  type     = "map"
  default  = {
    project     = "CHANGE_HERE"
    Environment = "prod"
  }

}

# --------------------------------

variable "engine" { 
  type    = "string"
  default = "postgres"
}

variable "engine_version" {
  type     = "string"
  default  = "10.6"

}

variable "instance_class" {
  type     = "string"
  default  = "db.t2.small"

}

variable "allocated_storage" {
  type     = "string"
  default  = "20"

}

variable "storage_encrypted" {
  default  = true

}

variable "kms_key_id" {
  default  = ""
}

variable "port" {
  type     = "string"
  default  = "5432"

}

 variable "iam_database_authentication_enabled" {
  default  = false

} 

variable "vpc_security_group_ids" {
  type     = "list"
  default  = ["sg-cd7c76a6"]

}

variable "maintenance_window" {
  type     = "string"
  default  = "Mon:00:00-Mon:03:00"

}

variable "backup_window" {
  type     = "string"
  default  = "03:00-06:00"

}

variable "backup_retention_period" {
  type     = "string"
  default  = "7"

}

variable "create_db_parameter_group" {
  default  = false

}

variable "parameter_group_name" {
  type     = "string"
  default  = "default.postgres10"

}

variable "db_subnet_group_name" {
  type     = "string"
  default  = "k8s-rds-subnet"

}

variable "option_group_name" {
  type     = "string"
  default  = "default:postgres-10"

}

variable "subnet_ids" {
  type     = "list"
  default  = ["subnet-43929b09", "subnet-05970c7f", "subnet-afaff2c7"]

}

variable "family" {
  type     = "string"
  default  = "postgres10"

}

variable "major_engine_version" {
  type     = "string"
  default  = "10.6"

}

variable "deletion_protection" {
  default  = true

}

variable "multi_az" {
  default  = true

}
