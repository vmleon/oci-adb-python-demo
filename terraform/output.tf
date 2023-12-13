output "deploy_id" {
  value = random_string.deploy_id.result
}

output "db_name" {
  value     = oci_database_autonomous_database.adb.db_name
}

output "connection_strings" {
  value     = oci_database_autonomous_database.adb.connection_strings
}

output "adb_password" {
  value = random_password.adb_admin_password.result
  sensitive = true
}