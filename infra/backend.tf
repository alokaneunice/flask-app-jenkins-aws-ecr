terraform {
  backend "s3" {
    bucket = "tweek-bucket345426"
    region = "us-east-2"
    key    = "flask-app-jenkins-aws-ecr-backend/terraform.tfstate"
  }
}