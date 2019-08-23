# ----     Change here  ----------- 
variable "identifier" {
  type   = "string"
  default = "CHANGE_HERE"  #ex: default = "myproject"
}

variable "name" {
  type     = "string"
  default = "CHANGE_HERE"  #ex: default = "myproject_dev"
}

variable "username" {
  type     = "string"
  default = "CHANGE_HERE_ddl"  #ex: default = "myproject_dev_user"
}

variable "password" {
  type     = "string"
  default  = "YOUR_PASSWORD"

}

variable "final_snapshot_identifier" {
  type     = "string"
  default = "CHANGE_HERE-final-snapshot"  #ex: default = "myproject_dev_user"

}

variable "tags" {
  type     = "map"
  default  = {
    project     = "CHANGE_HERE"
    Environment = "dev"
  }

}

# -------------------------------- 

variable "engine" { 
  type    = "string"
  default = "oracle-se2"
}

variable "engine_version" {
  type     = "string"
  default  = "12.1.0.2.v16"

}

variable "instance_class" {
  type     = "string"
  default  = "db.t2.medium"

}

variable "allocated_storage" {
  type     = "string"
  default  = "10"

}

variable "storage_encrypted" {
  default  = true

}

variable "kms_key_id" {
  default  = ""
}

variable "license_model" {
  type     = "string"
  default  = "license-included"

}

variable "port" {
  type     = "string"
  default  = "1521"

}

 variable "iam_database_authentication_enabled" {
  default  = false

} 

variable "vpc_security_group_ids" {
  type     = "list"
  default  = [""]

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
  default  = "0"

}


variable "create_db_parameter_group" {
  default  = false

}

variable "parameter_group_name" {
  type     = "string"
  default  = "default.oracle-se2-12.1"

}

variable "db_subnet_group_name" {
  type     = "string"
  default  = ""

}

variable "option_group_name" {
  type     = "string"
  default  = "default:oracle-se2-12-1"

}

variable "subnet_ids" {
  type     = "list"
  default  = [""]

}

variable "major_engine_version" {
  type     = "string"
  default  = "12.1"

}

variable "character_set_name" {
  type   = "string"
  default = "AL32UTF8"

}


variable "deletion_protection" {
  default  = true

}
