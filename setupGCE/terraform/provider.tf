provider "google" {
  alias = "gcp-a"
  credentials = "${file(var.proj["cred_file"])}"
  project = "${var.proj["name"]}"
  region =  "${var.region_a}"
}

provider "google" {
  alias = "gcp-b"
  credentials = "${file(var.proj["cred_file"])}"
  project = "${var.proj["name"]}"
  region =  "${var.region_b}"
}
