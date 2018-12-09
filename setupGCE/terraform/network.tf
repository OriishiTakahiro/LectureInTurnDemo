/*
resource "google_compute_network" "a" {
  name          = "gce-network-a"
  project = "${var.proj["name"]}"
}

resource "google_compute_network" "b" {
  name          = "gce-network-b"
  project = "${var.proj["name"]}"
}
*/

resource "google_compute_network" "default" {
  name    = "default-network"
  project = "${var.proj["name"]}"
}
