variable "apply_immediately" {}

variable "aurora_instance_count" {
  description = "Number of db nodes, if this is specified rds_instance_count should be zero."
}

variable "availability_zones" {
  type = "list"
}

variable "backup_retention_period_in_days" {}

variable "backup_window" {}

variable "copy_tags_to_snapshot" {}

variable "db_name" {
  description = "Initial db name for RDS to create"
}

variable "db_password" {}

variable "db_port" {}

variable "db_username" {}

variable "deletion_protection" {
  default = false
}

variable "identifier" {
  description = "Identifier to show in RDS API"
}

variable "instance_class" {
  description = "RDS instance type (db.t2.small, db.r3.large, etc)"
}

variable "iops" {
  default     = 0
  description = "Amount of provisioned IOPS. Set your storage class to io1 to use this"
}

variable "maintenance_window" {}

variable "publicly_accessible" {
  default = false
}

variable "parameter_group_name" {
  description = "RDS parameter group to use"
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

variable "skip_final_snapshot" {
  description = "Determines if a final snapshot should NOT be created before destroying the instance. Should be false for production environments"
  default     = false
}

variable "snapshot_identifier" {
  description = "Specify this to use a snapshot to create the database instance."
  default     = ""
}

variable "subnet_ids" {
  type = "list"
}

variable "tags" {
  default     = {}
  description = "Tags to apply to created resources"
}

variable "vpc_id" {}

variable "rds_allow_major_version_upgrade" {
  description = "Indicates that major version upgrades are allowed. Use only if you need to upgrade database to a major version."
  default     = false
}
