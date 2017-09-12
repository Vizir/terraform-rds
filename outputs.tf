output "db_host" {
  value = "${join(",", concat(aws_rds_cluster.default.*.endpoint, aws_db_instance.default.*.address))}"
}

output "db_name" {
  value = "${var.db_name}"
}

output "db_port" {
  value = "${var.db_port}"
}

output "db_security_group_id" {
  value = "${aws_security_group.rds.id}"
}

output "reader_db_host" {
  value = "${join(",", concat(aws_rds_cluster.default.*.reader_endpoint, aws_db_instance.default.*.address))}"
}
