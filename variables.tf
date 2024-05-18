variable "project_id" {
  type        = string
  description = "The project to manage resources in."
}

variable "name" {
  type        = string
  description = "The name of the NAT instance."
  default     = "nat-instance"
}

variable "machine_type" {
  type        = string
  description = "The machine type of the NAT instance."
  default     = "e2-standard-2"
}

variable "zone" {
  type        = string
  description = "The zone of the NAT instance."
}

variable "disk_size" {
  type        = number
  description = "The disk size of the NAT instance."
  default     = 20
}

variable "disk_type" {
  type        = string
  description = "The disk type of the NAT instance."
  default     = "pd-standard"
}

variable "network_tier" {
  type        = string
  description = "The network tier of the NAT instance."
  default     = "PREMIUM"
}

variable "subnetwork" {
  type        = string
  description = "The subnetwork of the NAT instance."
}

variable "route_priority" {
  type        = number
  description = "The priority of the NAT route."
  default     = 900
}

variable "network_tags" {
  type        = list(string)
  description = "The network tags the NAT route applies to."
  default     = ["no-ext-ip"]
}
