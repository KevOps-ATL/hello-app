module "gke-cluster" {
  source = "./modules/gke"
}

module "node-pool" {
  source = "./modules/node-pool"
}

# module "svc-acct" {
#   source = "./modules/svc-acct"
# }

module "zones" {
  source = "./modules/zones"
}
# module "vpc" {
#   source = "./modules/vpc"
#   project_id = "project_id"
# }