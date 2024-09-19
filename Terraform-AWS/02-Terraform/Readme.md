#Initialize and Apply Terraform Configuration
#Run the following commands to initialize and apply the Terraform configuration:

    cd eks-terraform
    terraform init
    terraform plan -out=tfplan
    terraform apply tfplan

Deploy the Kubernetes Manifests
    After configuring kubectl with the generated kubeconfig, apply the Kubernetes manifests:

        kubectl apply -f kubernetes/deployment.yaml
        kubectl apply -f kubernetes/service.yaml

Complete Code Repository
    Here is the complete code repository structure:

        eks-terraform/
        ├── main.tf
        ├── variables.tf
        ├── outputs.tf
        ├── kubernetes/
        │   ├── deployment.yaml
        │   ├── service.yaml
        ├── kubeconfig.yaml

You can upload this directory to your GitHub repository. If you need further assistance or explanations on any part of the code, feel free to ask!

