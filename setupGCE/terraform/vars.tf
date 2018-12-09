# Project config
variable "proj" {
  type = "map"
  default = {
    "name" = "lectureinturn"
    "cred_file" = "../credentials/lectureinturn.json"
    "image" = "packer-1544378740"
  }
}

# Configuration A-group
variable "gce_a" {
  type = "list"
  default = [ "gcea1", "gcea2", "gcea3", "gcea4", "gcea5", "gcea6" ]
}
variable "region_a" {
  type = "string"
  default = "us-west1-a"
}

# Configuration B-group
variable "gce_b" {
  type = "list"
  default = [ "gceb1", "gceb2", "gceb3", "gceb4", "gceb5" ]
}
variable "region_b" {
  type = "string"
  default = "us-central1-a"
}
