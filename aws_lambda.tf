data "aws_iam_policy_document" "lambda_assume_role" {
  statement {
    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = ["lambda.amazonaws.com"]
    }

    actions = ["sts:AssumeRole"]
  }
}

data "archive_file" "lambda_zip" {
  type        = "zip"
  source_dir  = local.lambda_source_dir
  output_path = local.lambda_path_zip_name
}

resource "aws_iam_role" "iam_for_lambda" {
  name               = "iam_for_lambda"
  assume_role_policy = data.aws_iam_policy_document.lambda_assume_role.json
}

resource "aws_s3_object" "fake_object" {
  depends_on = [aws_s3_bucket.codebuild_artifacts_bucket]

  bucket = aws_s3_bucket.codebuild_artifacts_bucket.id
  key    = aws_codebuild_project.codebuild_lambda.name
  source = data.archive_file.lambda_zip.output_path

  lifecycle {
    ignore_changes = all
  }

  force_destroy = true
}

resource "aws_lambda_function" "lambda" {
  depends_on = [aws_s3_object.fake_object]

  function_name = var.lambda_name
  role          = aws_iam_role.iam_for_lambda.arn
  handler       = var.lambda_handler
  runtime       = var.lambda_runtime

  s3_bucket = aws_s3_object.fake_object.bucket
  s3_key    = aws_s3_object.fake_object.key
}