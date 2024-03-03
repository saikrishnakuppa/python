#Variables
variable "infrastructure_version" {
  default = "1"
}
variable "access_key" {
  default = ""
}
variable "secret_key" {
  default = ""
}
variable "region" {
  default = "us-east-1"
}
variable "vpc_cidr" {
  description = "The CIDR Block for the SiteSeer VPC"
  default     = "10.0.0.0/16"
}

variable "rt_wide_route" {
  description = "Route in the SiteSeer Route Table"
  default     = "0.0.0.0/0"
}
variable "subnet_count" {
  description = "no of subnets"
  default = 2
}
variable "availability_zones" {
  description = "availability zone to create subnet"
  default = [
    "us-east-1a",
    "us-east-1b"]
}
variable "postgres_db_port" {
  description = "Port exposed by the RDS instance"
  default = 5432
}
variable "rds_instance_type" {
  description = "Instance type for the RDS database"
  default = "db.t2.micro"
}
# Change database-1 to postgres
variable "rds_identifier" {
  description = "db identifier"
  default     = "database-1"
}
variable "rds_storage_type" {
  description = "db storage type"
  default     = "gp2"
}
# Change 20 to 5
variable "rds_allocated_storage" {
  description = "db allocated storage"
  default     = 20
}
variable "rds_engine" {
  description = "type of db engine"
  default     = "postgres"
}
variable "rds_engine_version" {
  description = "db engine version"
  default     = "12"
}
variable "rds_database_name" {
  description = "db worker name"
  default     = "postgresdb"
}
variable "rds_username" {
  description = "db username"
  default     = "postgres"
}
variable "rds_password" {
  description = "db password"
  default     = "admin123"
}
variable "rds_final_snapshot_identifier" {
  description = "db final snapshot identifier"
  default     = "worker-final"
}
variable "flask_app_port" {
  description = "Port exposed by the fast-api application"
  default = 443
}
variable "flask_app_image" {
  description = "Dockerhub image for fast-api-app"
  default = "docker.io/saikrishnakuppa/fast-api-docker-example:latest"
}
variable "flask_app" {
  description = "fast-api APP variable"
  default = "app"
}
variable "flask_env" {
  description = "fast-api ENV variable"
  default = "dev"
}
variable "flask_app_home" {
  description = "APP HOME variable"
  default = "/usr/src/app/"
}
variable "ecs_task_definition_name" {
  description = "Task definition name."
  type = string
  default = "fast-api-app"
}

variable "cloudwatch_group" {
  description = "CloudWatch group name."
  type = string
  default = "fast-api-app"
}
variable "health_check_path" {
  description = "Http path for task health check"
  default     = "/sample/fast-api/healthcheck"
}