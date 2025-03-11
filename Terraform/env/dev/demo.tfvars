region_azs            = ["a","b","c"]
project_name          = "java-dev-app"
num_public_subnets    = 3
num_private_subnets   = 3
cluster_name          = "java-dev-eks"
cluster_version       = 1.31
vpc_cidr              = "172.40.0.0/16"
helmfile_version      = "v0.143.0"
kubectl_version       = "v1.29.0"
common_tags           = {
    "Project-Name"  = "Java-dev-app"
    "Managed-By"    = "Terraform"
    "Environment"   = "Dev"
    "Owner"         = "Anmol Rai"    
}