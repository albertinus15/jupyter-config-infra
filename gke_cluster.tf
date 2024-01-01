resource "google_container_cluster" "gke_cluster" {
  name     = "cluster-jupyter"
  location = "asia-east1-a"

  network    = google_compute_network.vpc.name

  deletion_protection = false

  node_pool {
    name       = "gpu-pool"
    node_count = 1

    node_config {
      preemptible  = false
      machine_type = "n1-standard-4"
      guest_accelerator {
        type  = "nvidia-tesla-k80"
        count = 1
      }
    }

    management {
      auto_repair = true
    }

    autoscaling {
      min_node_count = 3
      max_node_count = 5  
    }
  }
}
