terraform {
  backend "s3" {
    bucket = "terraform-state-02042026"
    key    = "terraform/backend"
    region = "us-east-1"

  }
}