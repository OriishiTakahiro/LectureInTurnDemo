provider "google" {
  alias = "gcp-a"
  credentials = "${file("../credentials/lectureinturn.json")}"
  project = "lectureinturn"
  region =  "asia-south1-a"
}

resource "google_container_cluster" "demo" {
  name               = "demo-cluster"
  zone               = "asia-south1-a"
  project = "lectureinturn"
  initial_node_count = 3
  node_config {
    machine_type = "g1-small"
  }
}
