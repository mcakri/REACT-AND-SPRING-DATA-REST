variable "account_id" {
  description = "account ID"
  type        = number
}

variable "region" {
  default     = "eu-central-1"
  description = "AWS region"
}



variable "rk_data_bucket" {
  type    = string
  default = "rk-dev-data-bucket"
}

variable "instances_number" {
  description = "Number of instances"
  type        = number
  default     = 1
}

variable "instance_ami" {
  description = "AMI ID"
  type        = string
  default = "ami-0e8286b71b81c3cc1"
}


variable "ingress_cidr_blocks" {
  description = "ingress cidr block"
  type        = list(string)
  default     = ["10.0.0.0/16"]


}

variable "ingress_rules" {
  description = "ingress rules"
  type        = list(string)
  default     = ["ssh-tcp"]


}

variable "egress_rules" {
  description = "ingress egress rules"
  type        = list(string)
  default     = ["all-all"]


}

variable "instance_profile_name" {
  description = "Instance profile name"
  type        = string
  default     = ""

}

## ECS
variable "cluster_name" {
  description = "The cluster_name"
  default = "rk-ecs-cluster"
}

variable "container_name" {
  description = "Container name"
  default = "rk-ecs-container"
}

variable "vpc_id" {
  type = string
  default = ""
}


variable "availability_zones"{
  type = list(string)
  default = ["eu-central-1a", "eu-central-1b"]
}

variable "app_repository_name" {
  description = "Name of ECR Repository"
  default = "rk-repo"
}

variable "alb_port" {
  description = "ALB listener port"
  default = "80"
}

variable "container_port" {
  description = "ALB target port"
  default = "8080"
}

variable "desired_tasks" {
  description = "Number of containers desired to run the application task"
  default = "2"
}

variable "desired_task_cpu" {
  description = "Task CPU Limit"
  default = "256"
}

variable "desired_task_memory" {
  description = "Task Memory Limit"
  default = "512"
}

variable "min_tasks" {
  description = "Minimum"
  default = "2"
}

variable "max_tasks" {
  description = "Maximum"
  default = "4"
}

variable "cpu_to_scale_up" {
  description = "CPU % to Scale Up the number of containers"
  default = "80"
}

variable "cpu_to_scale_down" {
  description = "CPU % to Scale Down the number of containers"
  default = "60"
}

variable "helth_check_path" {
  description = ""
  default     = "/login"
}

variable "environment_variables" {
  type        = map(string)
  description = "ecs task environment variables"
  default = {
   env = "prod"
}
}

variable "ssl_certificate_arn" {
  type        = string
  description = "ssl certification arn"
  default     = ""
}

variable "domain_name" {
  type    = string
  default = ""
}

## Pipeline

variable "app_service_name" {
  description = "Service name"
  default = "rk-service-test"
}

variable "git_repository" {
  type        = map(string)
  description = "ecs task environment variables"
  default = {
   owner = "mcakri"
   name = "react-and-spring-data-rest"
   branch = "master"
 }
}


variable "repository_url" {
  description = "The url of the ECR repository"
  default = ""
}

variable "subnet_ids" {
  type        = list(string)
  description = "Subnet ids"
  default = ["",""] 
}

variable "build_args" {
  type    = map(string)
  default = {}
}

variable "build_options" {
  type        = string
  default     = "-f Dockerfile"
  description = "Docker build options. ex: '-f ./build/Dockerfile' "
}

variable "public_subnets" {
  type = list(string)
  default = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
}
