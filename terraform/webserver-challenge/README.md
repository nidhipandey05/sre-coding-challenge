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
| <a name="module_internet_gateway"></a> [internet\_gateway](#module\_internet\_gateway) | ./internet_gateway | n/a |
| <a name="module_nat_gateway"></a> [nat\_gateway](#module\_nat\_gateway) | ./nat_gateway | n/a |
| <a name="module_route"></a> [route](#module\_route) | ./route_table | n/a |
| <a name="module_sg"></a> [sg](#module\_sg) | ./network_security_group | n/a |
| <a name="module_subnet"></a> [subnet](#module\_subnet) | ./subnet | n/a |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | ./vpc | n/a |
| <a name="module_webserver"></a> [webserver](#module\_webserver) | ./ec2_instance | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami"></a> [ami](#input\_ami) | This is the machine image used for the webserver | `string` | n/a | yes |
| <a name="input_availability_zone"></a> [availability\_zone](#input\_availability\_zone) | AWS availability zone | `string` | n/a | yes |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | Instance type | `string` | n/a | yes |
| <a name="input_pr_snet_cidr"></a> [pr\_snet\_cidr](#input\_pr\_snet\_cidr) | The IPv4 CIDR block for the private subnet | `string` | n/a | yes |
| <a name="input_pub_snet_cidr"></a> [pub\_snet\_cidr](#input\_pub\_snet\_cidr) | The IPv4 CIDR block for the public subnet | `string` | n/a | yes |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | The IPv4 CIDR block for the VPC. CIDR can be explicitly set or it can be derived from IPAM using ipv4\_netmask\_length. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_webserver_instance_type"></a> [webserver\_instance\_type](#output\_webserver\_instance\_type) | n/a |
<!-- END_TF_DOCS -->