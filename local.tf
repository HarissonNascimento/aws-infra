locals {
  lambda_source_dir    = "${path.module}/lambda/"
  lambda_path_zip_name = "${path.module}/lambda/${var.codebuild_project_name}.zip"
}