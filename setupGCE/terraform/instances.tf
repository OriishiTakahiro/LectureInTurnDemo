resource "google_compute_instance" "gcp-a" {
  provider = "google.gcp-a"
  count = "${length(var.gce_a)}"
  name = "${element(var.gce_a, count.index)}"
  machine_type = "n1-standard-1"
  zone = "${var.region_a}"

  boot_disk {
    initialize_params {
      size = 10
      type = "pd-standard"
      image = "${var.proj["image"]}"
    }
  }

  network_interface {
    network = "${google_compute_network.default.name}"
    access_config {
    }
  }

}

resource "google_compute_instance" "gcp-b" {
  provider = "google.gcp-b"
  count = "${length(var.gce_b)}"
  name = "${element(var.gce_b, count.index)}"
  machine_type = "n1-standard-1"
  zone = "${var.region_b}"

  boot_disk {
    initialize_params {
      size = 10
      type = "pd-standard"
      image = "${var.proj["image"]}"
    }
  }

  network_interface {
    network = "${google_compute_network.default.name}"
    access_config {
    }
  }
}
