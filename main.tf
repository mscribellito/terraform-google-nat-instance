resource "google_compute_instance" "nat" {
  project = var.project_id

  name = var.name

  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "projects/centos-cloud/global/images/centos-stream-9-v20240415"
      size  = var.disk_size
      type  = var.disk_type
    }
  }

  network_interface {
    access_config {
      network_tier = var.network_tier
    }
    subnetwork = var.subnetwork
  }

  can_ip_forward = true

  metadata_startup_script = file("files/nat.sh")

}

resource "google_compute_route" "nat" {
  project = var.project_id

  name                   = var.name
  dest_range             = "0.0.0.0/0"
  network                = google_compute_instance.nat.network_interface[0].network
  priority               = var.route_priority
  tags                   = var.network_tags
  next_hop_instance      = google_compute_instance.nat.self_link
  next_hop_instance_zone = google_compute_instance.nat.zone
}
