resource "aws_s3_bucket" "schoener_Tag_fuer_cicd_pipelines" {
  bucket = var.bucket_name

  tags = {
    Name        = "My lovely website"
    Terraform   = "True"
  }
}

resource "aws_s3_bucket_website_configuration" "schoener_Tag_fuer_cicd_pipelines" {
  bucket = aws_s3_bucket.schoener_Tag_fuer_cicd_pipelines.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }

}

resource "aws_s3_bucket_public_access_block" "schoener_Tag_fuer_cicd_pipelines" {
  bucket = aws_s3_bucket.schoener_Tag_fuer_cicd_pipelines.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}