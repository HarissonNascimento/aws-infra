variable "github_token" {
  description = "Set environment variable 'TF_VAR_github_token' with GitHub token."
  type        = string
}

variable "github_repository_name" {
  type        = string
  description = "This is the Mirrored AWS Project Repository"
  default     = "mirrored-aws-project"
}

variable "codebuild_project_name" {
  type        = string
  description = "Name of CodeBuild project."
  default     = "codebuild_lambda_function"
}

variable "codebuild_artifacts_bucket_name" {
  type        = string
  description = "Name of CodeBuild output artifacts"
  default     = "lambda-helloworld-7700facc1085"
}

variable "codebuild_project_source_version" {
  type        = string
  description = "Source version to CodeBuild lambda. See documentation https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html"
  default     = "refs/heads/feature/lambda-helloworld"
}

variable "codecommit_repository_name" {
  type        = string
  description = "This is the Mirrored AWS Project Repository"
  default     = "mirrored-aws-project"
}

variable "codecommit_iam_user_name" {
  type    = string
  default = "codecommit-user"
}

variable "lambda_name" {
  type        = string
  description = "The name or ARN of the Lambda function."
  default     = "lambdaHelloWorld"
}

variable "lambda_runtime" {
  type        = string
  description = "The identifier of the function's runtime. Runtime is required if the deployment package is a .zip file archive. See documentation https://docs.aws.amazon.com/lambda/latest/api/API_CreateFunction.html#API_CreateFunction_RequestSyntax"
  default     = "python3.12"
}

variable "lambda_handler" {
  type        = string
  description = "Lambda handler"
  default     = "lambda_function.lambda_handler"
}
