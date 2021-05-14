module "s3-bucket" {
  source  = "app.terraform.io/KrishnaG-training/s3-bucket/aws"
  version = "1.15.0"
  # insert required variables here
//--------------------------------------------------------------------
// Variables
variable "s3_bucket_policy" {}

//--------------------------------------------------------------------
// Modules
module "s3_bucket" {
  source  = "app.terraform.io/KrishnaG-training/s3-bucket/aws"
  version = "2.1.0"

  acceleration_status = "Suspended"
  bucket = "Training-S3"
  bucket_prefix = "KrishnaG-"
  policy = "${var.s3_bucket_policy}"
  request_payer = "devops"
}
}
