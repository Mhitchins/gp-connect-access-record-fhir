variable "region" {}

variable "name_prefix" {}

variable "image_version" {}

variable "cluster_id" {}

variable "container_port" {
}

locals {
  service_name        = "mock-provider"
}

variable "subnet_ids" {
  type = list(string)
}

variable "alb_tg_arn" {
}

data "aws_subnet" "private_subnets" {
  count = length(var.subnet_ids)
  id    = var.subnet_ids[count.index]
}

variable "vpc_id" {}