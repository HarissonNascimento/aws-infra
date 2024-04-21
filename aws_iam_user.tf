resource "aws_iam_user" "codecommit_user" {
  name = "codecommit-user"
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