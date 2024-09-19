Initialize and Apply Terragrunt Configuration
Run the following commands to initialize and apply the Terragrunt configuration:

    cd eks-terragrunt/vpc
    terragrunt init
    terragrunt plan -out=tfplan
    terragrunt apply tfplan

    cd ../eks
    terragrunt init
    terragrunt plan -out=tfplan
    terragrunt apply tfplan

    cd ../ec2
    terragrunt init
    terragrunt plan -out=tfplan
    terragrunt apply tfplan

Step 7: Deploy the Kubernetes Manifests
After configuring kubectl with the generated kubeconfig, apply the Kubernetes manifests:

    kubectl apply -f kubernetes/deployment.yaml
    kubectl apply -f kubernetes/service.yaml

Complete Code Repository
Here is the complete code repository structure:

    eks-terragrunt/
    ├── terragrunt.hcl
    ├── vpc
    │   ├── terragrunt.hcl
    │   └── main.tf
    ├── eks
    │   ├── terragrunt.hcl
    │   └── main.tf
    ├── ec2
    │   ├── terragrunt.hcl
    │   └── main.tf
    ├── kubernetes/
    │   ├── deployment.yaml
    │   ├── service.yaml
    └── kubeconfig.yaml