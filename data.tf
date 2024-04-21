data "aws_iam_policy" "codecommit_policy" {
  name = "AWSCodeCommitPowerUser"
}

data "tls_public_key" "codecommit_public_key" {
  private_key_pem = file("./privatekey.pem")
}