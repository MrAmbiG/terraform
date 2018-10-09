
resource "random_string" "monitoring_pass" {
  length = 30
  override_special = "!@#$%&*()-_=+[]{}<>:?" # excluding & to avoid problems with sed
  min_lower = 8
  min_upper = 7
  min_numeric = 8
  min_special = 7
}
output "monitoring_user_password" {
  value =  "${random_string.monitoring_pass.result}"
}