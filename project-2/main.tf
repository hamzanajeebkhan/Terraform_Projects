module "website_s3_bucket" {
  source = "./modules/s3_bucket_static_website"

  bucket_name = "project2-terraform-module-usage"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
