include {
  path = "terragrunt.hcl"
}
dependency "vpc" {
  config_path = "../vpc"
}

inputs = {
  region        = "us-west-2"
  ami_id        = "ami-0c55b159cbfafe1f0"  # Replace with a valid AMI ID for your region
  instance_type = "t2.micro"
  subnet_id     = dependency.vpc.outputs.public_subnets[0]
}