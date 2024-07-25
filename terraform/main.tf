resource "aws_s3_bucket" "terraform_state_bucket" {
  bucket = "basic-terraform-state-bucket"  # Replace with your desired bucket name
  lifecycle {
    prevent_destroy = false  # Set to true to prevent accidental deletion of the bucket
  }

  tags = {
    environment = "production"
    provisioner = "terraform"
    managed_by  = "terraform"
  }
}


