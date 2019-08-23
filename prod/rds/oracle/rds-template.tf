module "db" {
  source = "terraform-aws-modules/rds/aws"

  identifier = "${var.identifier}"

  engine            = "${var.engine}"
  engine_version    = "${var.engine_version}"

  instance_class    = "${var.instance_class}"
  allocated_storage = "${var.allocated_storage}"
  storage_encrypted = "${var.storage_encrypted}"
  kms_key_id        = "${var.kms_key_id}"
  license_model     = "${var.license_model}"

  name     = "${var.name}"
  username = "${var.username}"
  password = "${var.password}"
  port     = "${var.port}"

  iam_database_authentication_enabled = "${var.iam_database_authentication_enabled}"
  
  vpc_security_group_ids = "${var.vpc_security_group_ids}"

  maintenance_window = "${var.maintenance_window}"
  backup_window      = "${var.backup_window}"

  backup_retention_period = "${var.backup_retention_period}"

  tags = "${var.tags}"

  create_db_parameter_group = "${var.create_db_parameter_group}"
  parameter_group_name = "${var.parameter_group_name}"
  db_subnet_group_name = "${var.db_subnet_group_name}"
  option_group_name    = "${var.option_group_name}"

  subnet_ids = "${var.subnet_ids}"

  major_engine_version = "${var.major_engine_version}"

  final_snapshot_identifier = "${var.final_snapshot_identifier}"

  character_set_name = "${var.character_set_name}"

  deletion_protection = "${var.deletion_protection}"

}
