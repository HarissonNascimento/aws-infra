output "codecommit_ssh_url" {
  description = "The SSH URL from the CodeCommit repository"
  value       = aws_codecommit_repository.mirrored_aws_project_repository.clone_url_ssh
}