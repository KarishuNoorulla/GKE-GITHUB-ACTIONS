output "cluster_name" {
  value = google_container_cluster.primary.name
}

output "vpc_name" {
  value = google_compute_network.vpc_network.name
}
