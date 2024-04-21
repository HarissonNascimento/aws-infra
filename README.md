<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.8.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.46.0 |
| <a name="requirement_tls"></a> [tls](#requirement\_tls) | ~> 4.0.5 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.46.0 |
| <a name="provider_tls"></a> [tls](#provider\_tls) | 4.0.5 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_codecommit_repository.ai_document_based_repository](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codecommit_repository) | resource |
| [aws_iam_user.codecommit_user](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user) | resource |
| [aws_iam_user_policy_attachment.codecommit_attach](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_policy_attachment) | resource |
| [aws_iam_user_ssh_key.codecommit_ssh_key](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_ssh_key) | resource |
| [aws_iam_policy.codecommit_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy) | data source |
| [tls_public_key.codecommit_public_key](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/data-sources/public_key) | data source |

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_codecommit_ssh_key_id"></a> [codecommit\_ssh\_key\_id](#output\_codecommit\_ssh\_key\_id) | The SSH Key ID for codecommit user |
| <a name="output_codecoomit_ssh_url"></a> [codecoomit\_ssh\_url](#output\_codecoomit\_ssh\_url) | The SSH URL from the CodeCommit repository |
<!-- END_TF_DOCS -->