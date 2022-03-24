<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | = 1.1.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 4.6.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_s3"></a> [s3](#module\_s3) | ./s3 | n/a |
| <a name="module_sns"></a> [sns](#module\_sns) | ./sns | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name) | Name of the s3 bucket | `string` | n/a | yes |
| <a name="input_email_address"></a> [email\_address](#input\_email\_address) | Email for alert | `string` | n/a | yes |
| <a name="input_file_source"></a> [file\_source](#input\_file\_source) | s3 bucket file source path | `string` | n/a | yes |
| <a name="input_key"></a> [key](#input\_key) | s3 bucket object key | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_s3_bucket"></a> [s3\_bucket](#output\_s3\_bucket) | n/a |
<!-- END_TF_DOCS -->