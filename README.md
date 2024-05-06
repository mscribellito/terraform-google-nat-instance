# terraform-google-nat-instance
<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 5.27.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_compute_instance.nat](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance) | resource |
| [google_compute_route.nat](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_route) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_disk_size"></a> [disk\_size](#input\_disk\_size) | The disk size of the NAT instance. | `number` | `20` | no |
| <a name="input_disk_type"></a> [disk\_type](#input\_disk\_type) | The disk type of the NAT instance. | `string` | `"pd-standard"` | no |
| <a name="input_machine_type"></a> [machine\_type](#input\_machine\_type) | The machine type of the NAT instance. | `string` | `"e2-standard-2"` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the NAT instance. | `string` | `"nat-instance"` | no |
| <a name="input_network_tags"></a> [network\_tags](#input\_network\_tags) | The network tags the NAT route applies to. | `list(string)` | <pre>[<br>  "no-ext-ip"<br>]</pre> | no |
| <a name="input_network_tier"></a> [network\_tier](#input\_network\_tier) | The network tier of the NAT instance. | `string` | `"PREMIUM"` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The project to manage resources in. | `string` | n/a | yes |
| <a name="input_route_priority"></a> [route\_priority](#input\_route\_priority) | The priority of the NAT route. | `number` | `900` | no |
| <a name="input_subnetwork"></a> [subnetwork](#input\_subnetwork) | The subnetwork of the NAT instance. | `string` | n/a | yes |
| <a name="input_zone"></a> [zone](#input\_zone) | The zone of the NAT instance. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->