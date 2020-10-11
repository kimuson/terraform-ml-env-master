resource "google_compute_address" "default" {
  name = "external-network"
}

resource "google_compute_instance" "default" {
  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.zone

  tags = []

	boot_disk {
	  initialize_params {
		size  = var.size
		type  = var.type
		image = var.boot_image_name
	  }
	}
  
  metadata = {
    gce-container-declaration = var.docker_declaration
  }

  network_interface {
    network = "default"
    access_config {
      nat_ip = "${google_compute_address.default.address}"
    }
  }
}