output "codecommit_ssh_key_id" {
  description = "The SSH Key ID for codecommit user"
  value       = aws_iam_user_ssh_key.codecommit_ssh_key.id
}

output "codecommit_ssh_url" {
  description = "The SSH URL from the CodeCommit repository"
  value       = aws_codecommit_repository.ai_document_based_repository.clone_url_ssh
}