provider "aws" {
  region = "us-east-1"
  access_key = "AKIGWQLH2"
  secret_key = "DGSfEaAlXjvzGUAcv+iDSD"
}

resource "aws_instance" "my_first_terraform_ec2" {
    ami = "ami-0fe472d8a85bc7b0e"
    instance_type = "t2.micro"  
}

resource "aws_s3_bucket" "b" {
  bucket = "static-jps-webpage"
  acl = "public-read"

  cors_rule {
    allowed_headers = ["*"]
    allowed_methods = ["PUT", "POST"]
    allowed_origins = ["https://static-jps-webpage"]
    expose_headers  = ["ETag"]
    max_age_seconds = 3000
  }
}
