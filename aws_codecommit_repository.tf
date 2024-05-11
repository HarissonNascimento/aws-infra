
data "aws_iam_policy" "codecommit_policy" {
  name = "AWSCodeCommitPowerUser"
}

resource "tls_private_key" "rsa_4096_private_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

data "tls_public_key" "codecommit_public_key" {
  private_key_pem = tls_private_key.rsa_4096_private_key.private_key_pem
}

resource "aws_iam_user" "codecommit_user" {
  name = var.codecommit_iam_user_name
}

resource "aws_iam_user_policy_attachment" "codecommit_attach" {
  user       = aws_iam_user.codecommit_user.name
  policy_arn = data.aws_iam_policy.codecommit_policy.arn
}

resource "aws_iam_user_ssh_key" "codecommit_ssh_key" {
  username   = aws_iam_user.codecommit_user.name
  encoding   = "PEM"
  public_key = data.tls_public_key.codecommit_public_key.public_key_pem
}

resource "aws_codecommit_repository" "mirrored_aws_project_repository" {
  repository_name = var.codecommit_repository_name
  description     = "This is the Mirrored AWS Project Repository"
}

resource "github_actions_secret" "codecommit_ssh_private_key" {
  repository      = var.github_repository_name
  secret_name     = "CODECOMMIT_SSH_PRIVATE_KEY"
  plaintext_value = tls_private_key.rsa_4096_private_key.private_key_pem
}

resource "github_actions_secret" "codecommit_ssh_private_key_id" {
  repository      = var.github_repository_name
  secret_name     = "CODECOMMIT_SSH_PRIVATE_KEY_ID"
  plaintext_value = aws_iam_user_ssh_key.codecommit_ssh_key.id
}