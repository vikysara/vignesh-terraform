resource "aws_instance" "vignesh-github-tf-project" {
   ami             = "ami-080e1f13689e07408"
   instance_type     = "t2.micro"
}

terraform {
  backend "s3" {
    bucket = "my-project-terraform12"
    key    = "terraform.tfstate"  # Specify the filename for the state file
    region = "us-east-1"          # Optionally specify the AWS region for the S3 bucket
  }
}
