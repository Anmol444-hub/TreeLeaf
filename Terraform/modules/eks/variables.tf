variable "cluster_name" {}
variable "cluster_version" {}
variable "private_subnets" {}
variable "vpc_id" {}
variable "project_name" {}
variable "service_ipv4_cidr" {
  default = "10.244.240.0/20" 
}
variable "alb_controller_sa" {
  default = "kube-system:aws-load-balancer-controller"
}