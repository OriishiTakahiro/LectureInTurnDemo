/*
resource "google_compute_firewall" "a" {
  name = "firewall-a"
  network = "${google_compute_network.a.name}"
  allow {
    protocol = "tcp"
    ports = ["80"]
  }
}

resource "google_compute_firewall" "b" {
  name = "firewall-b"
  network = "${google_compute_network.b.name}"
  allow {
    protocol = "tcp"
    ports = ["80"]
  }
}
*/


resource "google_compute_firewall" "defualt" {
  name = "default-firewall"
  project = "${var.proj["name"]}"
  network = "${google_compute_network.default.name}"
  allow {
    protocol = "tcp"
    ports = ["80"]
  }
  allow {
    protocol = "icmp"
  }
}
