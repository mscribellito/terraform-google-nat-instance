data "google_compute_image" "ubuntu" {
  project = "ubuntu-os-cloud"

  family = "ubuntu-2204-lts"
}

module "nat" {
  source = "github.com/mscribellito/terraform-google-vm-instance"

  project_id   = var.project_id
  name         = var.name
  region       = var.region
  machine_type = var.machine_type

  boot_disk = {
    image = data.google_compute_image.ubuntu.self_link
    type  = var.disk_type
    size  = var.disk_size
  }

  can_ip_forward = true

  network_interfaces = [{
    subnetwork = var.subnetwork
    access_config = {
    }
  }]

  metadata = {
    startup-script = file("files/nat.sh")
  }
}

resource "google_compute_route" "nat" {
  project = var.project_id

  name                   = var.name
  network                = module.nat.instance_details.network_interface[0].network
  dest_range             = "0.0.0.0/0"
  priority               = var.route_priority
  tags                   = var.network_tags
  next_hop_instance      = module.nat.self_link
  next_hop_instance_zone = module.nat.zone
}
