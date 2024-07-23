resource "aws_s3_bucket" "terraform_state_bucket" {
  bucket = "basic-terraform-state-bucket1"  # Replace with your desired bucket name
  lifecycle {
    prevent_destroy = false  # Set to true to prevent accidental deletion of the bucket
  }

  tags = {
    environment = "production"
    provisioner = "terraform"
    managed_by  = "terraform"
  }
}

resource "aws_instance" "demo" {
  ami           = "ami-0427090fd1714168b"  # Example AMI ID, replace with a valid one for us-east-1
  instance_type = "t2.micro"              # Example instance type, adjust as needed
  subnet_id = "subnet-0e4dedfacfaad0ca5"

  tags = {
    Name = "demoInstance"
  }
}