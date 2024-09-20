<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.68.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_eks_node_group.eks_managed_node_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_node_group) | resource |
| [aws_iam_role.eks_mng_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.eks_mng_role_attach_cni](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.eks_mng_role_attach_registry](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.eks_mng_role_attach_worker](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | EKS cluster name to create de MNG | `string` | n/a | yes |
| <a name="input_instance_types"></a> [instance\_types](#input\_instance\_types) | List of permitted types of instances | `list(string)` | n/a | yes |
| <a name="input_private_subnet_1a"></a> [private\_subnet\_1a](#input\_private\_subnet\_1a) | Private Subnet to create a EKS Cluster AZ 1a | `string` | n/a | yes |
| <a name="input_private_subnet_1b"></a> [private\_subnet\_1b](#input\_private\_subnet\_1b) | Private Subnet to create a EKS Cluster AZ 1b | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Project name to be used to name de resources (Name Tag) | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Default tags to be used on the project | `map(any)` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->