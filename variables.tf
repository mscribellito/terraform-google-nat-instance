variable "project_id" {
  type        = string
  description = "The project to manage resources in."
}

variable "name" {
  type        = string
  description = "The name of the NAT instance."
  default     = "nat-instance"
}

variable "region" {
  type        = string
  description = "The region of the NAT instance."
}

variable "machine_type" {
  type        = string
  description = "The machine type of the NAT instance."
  default     = "e2-micro"
}

variable "disk_type" {
  type        = string
  description = "The disk type of the NAT instance."
  default     = "pd-standard"
}

variable "disk_size" {
  type        = number
  description = "The disk size of the NAT instance."
  default     = 20
}

variable "subnetwork" {
  type        = string
  description = "The subnetwork of the NAT instance."
}

variable "network_tags" {
  type        = list(string)
  description = "The network tags the NAT route applies to."
  default     = ["no-ext-ip"]
}

variable "route_priority" {
  type        = number
  description = "The priority of the NAT route."
  default     = 900
}
