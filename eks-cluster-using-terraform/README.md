# Build EKS cluster with Terraform

[Provision an EKS Cluster learn guide](https://itnext.io/build-an-eks-cluster-with-terraform-d35db8005963)

![](images/eks.png)

## S3 bucket

```shell
s3://boriphuth-infra/
|_environment/
  |_development/
  | |_tf-state.json
  |_staging/
  | |_tf-state.json
  |_production/
    |_tf-state.json

aws s3 mb s3://boriphuth-infra --region ap-southeast-1

```

## development

```shell
terraform workspace new development
terraform init -backend-config=backend.tfvars

## select our existing workspace
terraform workspace select development
terraform init -backend-config=backend.tfvars


```