resource "aws_codecommit_repository" "mirrored_aws_project_repository" {
  repository_name = "mirrored-aws-project"
  description     = "This is the AI Document Based Lambda Repository"
}