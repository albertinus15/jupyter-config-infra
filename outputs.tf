output "cluster_name" {
  value = google_container_cluster.gke_cluster.name
}

output "cluster_location" {
  value = google_container_cluster.gke_cluster.location
}

output "cluster_vpc_name" {
  value = google_compute_network.vpc.name
}