variable "apply_immediately" {}

variable "aurora_instance_count" {
  description = "Number of db nodes, if this is specified rds_instance_count should be zero."
}

variable "availability_zones" {
  type = "list"
}

variable "backup_retention_period_in_days" {}

variable "backup_window" {}

variable "db_name" {
  description = "Initial db name for RDS to create"
}

variable "db_password" {}

variable "db_port" {}

variable "db_username" {}

variable "identifier" {
  description = "Identifier to show in RDS API"
}

variable "instance_class" {
  description = "RDS instance type (db.t2.small, db.r3.large, etc)"
}

variable "maintenance_window" {}

variable "publicly_accessible" {
  default = false
}

variable "rds_engine" {
  description = "DB Engine to use in RDS (Postgres, Mysql, etc) unless using AWS Aurora"
}

variable "rds_instance_count" {
  description = "Number of db nodes, if this is specified it should be 1 and aurora_instance_count should be zero."
}

variable "rds_multi_az" {
  description = "If the instance is multi-AZ. Used only for non aurora instances."
}

variable "rds_storage" {
  description = "Size of the database disk (used only in standard RDS, not Aurora)"
}

variable "rds_storage_type" {
  description = "Storage type standard, gp2, io1 (used only in standard RDS, not Aurora)"
}

variable "rds_version" {}

variable "replicate_source_db" {
  default     = ""
  description = "Treat this database as a read replica and use this value as the database to replicate. Do not use for Aurora. Aurora has its own replication mechanism."
}

variable "subnet_ids" {
  type = "list"
}

variable "vpc_id" {}
