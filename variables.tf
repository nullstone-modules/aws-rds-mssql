variable "sqlserver_edition" {
  type = string
  default = "se"
  description = <<EOF
Choose the SQL Server edition to create. Available options are ex (Express), web (Web), se (Standard), and ee (Enterprise).
EOF
}

variable "sqlserver_version" {
  type        = number
  default     = 15
  description = <<EOF
Choose the major version of the SQL Server engine. Available options are 12 (2014), 13 (2016), 14 (2017), and 15 (2019).
EOF
}

variable "instance_class" {
  type    = string
  default = "db.t3.xlarge"
}

variable "allocated_storage" {
  type        = number
  default     = 20
  description = "Allocated storage in GB"
}

variable "backup_retention_period" {
  type        = number
  default     = 5
  description = "The number of days that each backup is retained"
}

variable "high_availability" {
  type        = bool
  default     = false
  description = <<EOF
Enables high availability and failover support on the database instance.
By default, this is enabled to ensure reliability.
In dev environments, it is best to turn off to save on costs.
EOF
}

variable "enforce_ssl" {
  type        = bool
  default     = false
  description = <<EOF
By default, the sqlserver cluster will have SSL enabled.
This toggle will require an SSL connection.
This is highly recommended if you have public access enabled.
EOF
}

variable "enable_public_access" {
  type        = bool
  default     = false
  description = <<EOF
By default, the sqlserver cluster is not accessible to the public.
If you want to access your database, we recommend using a bastion instead.
However, this is necessary for scenarios like connecting from a Heroku app.
EOF
}

locals {
  port = 1433
}
