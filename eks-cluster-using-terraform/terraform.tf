terraform {
  required_version = "~> 1.0.5" # which means ">= 0.12.24" and "< 0.13"
  backend "s3" {}
}
