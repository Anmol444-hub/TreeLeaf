region_azs            = ["a","b","c"]
project_name          = "java-prod-app"
num_public_subnets    = 3
num_private_subnets   = 3
cluster_name          = "java-prod-eks"
cluster_version       = 1.31
vpc_cidr              = "172.40.0.0/16"
helmfile_version      = "v0.143.0"
kubectl_version       = "v1.29.0"
common_tags           = {
    "Project-Name"  = "Java-prod-app"
    "Managed-By"    = "Terraform"
    "Environment"   = "Production"
    "Owner"         = "Anmol Rai"    
}