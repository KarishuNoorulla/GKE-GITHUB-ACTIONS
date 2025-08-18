resource "google_compute_network" "vpc_network" {
  name                    = "tf-vpc-network-1"
  auto_create_subnetworks = true
}

resource "google_container_cluster" "primary" {
  name     = "tf-gke-cluster-1"
  location = var.region

  network    = google_compute_network.vpc_network.name
  remove_default_node_pool = true

  node_config {
    machine_type = "e2-medium"
    disk_size_gb  = 50   
    oauth_scopes = ["https://www.googleapis.com/auth/cloud-platform"]
  }

  initial_node_count = 1
}
