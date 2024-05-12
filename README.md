## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.8.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.46.0 |
| <a name="requirement_github"></a> [github](#requirement\_github) | ~> 6.2.1 |
| <a name="requirement_tls"></a> [tls](#requirement\_tls) | ~> 4.0.5 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_archive"></a> [archive](#provider\_archive) | 2.4.2 |
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.46.0 |
| <a name="provider_github"></a> [github](#provider\_github) | 6.2.1 |
| <a name="provider_tls"></a> [tls](#provider\_tls) | 4.0.5 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_codebuild_project.codebuild_lambda](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project) | resource |
| [aws_codecommit_repository.mirrored_aws_project_repository](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codecommit_repository) | resource |
| [aws_iam_role.codebuild_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.iam_for_lambda](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy.codebuild_role_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [aws_iam_user.codecommit_user](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user) | resource |
| [aws_iam_user_policy_attachment.codecommit_attach](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_policy_attachment) | resource |
| [aws_iam_user_ssh_key.codecommit_ssh_key](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_ssh_key) | resource |
| [aws_lambda_function.lambda](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function) | resource |
| [aws_s3_bucket.codebuild_artifacts_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_object.fake_object](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_object) | resource |
| [github_actions_secret.codecommit_ssh_private_key](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_secret) | resource |
| [github_actions_secret.codecommit_ssh_private_key_id](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_secret) | resource |
| [tls_private_key.rsa_4096_private_key](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |
| [archive_file.lambda_zip](https://registry.terraform.io/providers/hashicorp/archive/latest/docs/data-sources/file) | data source |
| [aws_iam_policy.codecommit_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy) | data source |
| [aws_iam_policy_document.codebuild_assume_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.codebuild_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.lambda_assume_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [tls_public_key.codecommit_public_key](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/data-sources/public_key) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_codebuild_artifacts_bucket_name"></a> [codebuild\_artifacts\_bucket\_name](#input\_codebuild\_artifacts\_bucket\_name) | Name of CodeBuild output artifacts | `string` | `"lambda-helloworld-7700facc1085"` | no |
| <a name="input_codebuild_project_name"></a> [codebuild\_project\_name](#input\_codebuild\_project\_name) | Name of CodeBuild project. | `string` | `"codebuild_lambda_function"` | no |
| <a name="input_codebuild_project_source_version"></a> [codebuild\_project\_source\_version](#input\_codebuild\_project\_source\_version) | Source version to CodeBuild lambda. See documentation https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html | `string` | `"refs/heads/feature/lambda-helloworld"` | no |
| <a name="input_codecommit_iam_user_name"></a> [codecommit\_iam\_user\_name](#input\_codecommit\_iam\_user\_name) | n/a | `string` | `"codecommit-user"` | no |
| <a name="input_codecommit_repository_name"></a> [codecommit\_repository\_name](#input\_codecommit\_repository\_name) | This is the Mirrored AWS Project Repository | `string` | `"mirrored-aws-project"` | no |
| <a name="input_github_repository_name"></a> [github\_repository\_name](#input\_github\_repository\_name) | This is the Mirrored AWS Project Repository | `string` | `"mirrored-aws-project"` | no |
| <a name="input_github_token"></a> [github\_token](#input\_github\_token) | Set environment variable 'TF\_VAR\_github\_token' with GitHub token. | `string` | n/a | yes |
| <a name="input_lambda_handler"></a> [lambda\_handler](#input\_lambda\_handler) | Lambda handler | `string` | `"lambda_function.lambda_handler"` | no |
| <a name="input_lambda_name"></a> [lambda\_name](#input\_lambda\_name) | The name or ARN of the Lambda function. | `string` | `"lambdaHelloWorld"` | no |
| <a name="input_lambda_runtime"></a> [lambda\_runtime](#input\_lambda\_runtime) | The identifier of the function's runtime. Runtime is required if the deployment package is a .zip file archive. See documentation https://docs.aws.amazon.com/lambda/latest/api/API_CreateFunction.html#API_CreateFunction_RequestSyntax | `string` | `"python3.12"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_codecommit_ssh_url"></a> [codecommit\_ssh\_url](#output\_codecommit\_ssh\_url) | The SSH URL from the CodeCommit repository |
