# Spring Boot Application with Terraform and Helm

This project includes a Spring Boot application, Terraform configurations for infrastructure, and Helm charts for Kubernetes deployment.

## Dockerized Application

Build the Docker image:
```
cd Application
docker build -t anmol-rai-assessment .
```

Run the container:
```
docker run  -it -p 8080:8080 anmol-rai-assessment
```

Test the application:
```
curl -u user:password "http://localhost:8080/v1/cars"
curl -u user:password "http://localhost:8080/v1/drivers?onlineStatus=ONLINE"
curl -u user:password "http://localhost:8080/v1/drivers?onlineStatus=ONLINE&deleted=false"
curl -u user:password "http://localhost:8080/v1/drivers?onlineStatus=ONLINE&deleted=false&username=driver01"
curl -u user:password -X PUT "http://localhost:8080/v1/drivers/4/car/4545PWR"
```

## Terraform

Navigate to the environment directory:
```
cd env/dev  # For development
cd env/prod  # For production
```

Initialize Terraform:
```
terraform init
```

Plan and apply:
```
terraform plan -var-file=demo.tfvars
terraform apply -var-file=demo.tfvars
```

## Helm

Deploy the application:
```
helm upgrade --install anmol-rai-assessment ./helm-charts -f values-dev.yaml  # For dev
helm upgrade --install anmol-rai-assessment ./helm-charts -f values-prod.yaml  # For prod
```

The Helm chart includes HPA, readiness and liveness probes, and a service exposed on port 8080.

## CI/CD Pipeline

This project uses GitHub Actions for CI/CD. Two workflows are available:

1. Deploy to Development:
   - Triggered on push to the `develop` branch
   - Builds and pushes Docker image
   - Deploys to development Kubernetes cluster

2. Deploy to Production:
   - Triggered on push to the `main` branch
   - Builds and pushes Docker image
   - Deploys to production Kubernetes cluster

To deploy:

1. For development:
   - Push or merge your changes to the `develop` branch
   - The CI/CD pipeline will automatically deploy to the dev environment

2. For production:
   - Push or merge your changes to the `main` branch
   - The CI/CD pipeline will automatically deploy to the prod environment