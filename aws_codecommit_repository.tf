resource "aws_codecommit_repository" "ai_document_based_repository" {
  repository_name = "ai-document-based-lambda"
  description     = "This is the AI Document Based Lambda Repository"
}