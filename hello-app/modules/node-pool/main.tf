resource "google_container_node_pool" "default" {
  name       = "kc-node-pool"
  location   = "us-east1"
  cluster    = "kc-cluster-1"
  node_count = 1

  node_config {
    preemptible  = true
    machine_type = "e2-medium"

    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    # service_account = google_service_account.default.email
    oauth_scopes    = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}



