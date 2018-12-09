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
    disk_size_gb = "10"
    oauth_scopes = [
      "https://www.googleapis.com/auth/compute",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring"
    ]
  }
}

# The following outputs allow authentication and connectivity to the GKE Cluster.
output "client_certificate" {
  value = "${google_container_cluster.demo.master_auth.0.client_certificate}"
}

output "client_key" {
  value = "${google_container_cluster.demo.master_auth.0.client_key}"
}

output "cluster_ca_certificate" {
  value = "${google_container_cluster.demo.master_auth.0.cluster_ca_certificate}"
}
