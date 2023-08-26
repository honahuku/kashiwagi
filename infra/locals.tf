# Workload Identity
# https://blog.g-gen.co.jp/entry/using-terraform-via-github-actions
locals {
  github_repository         = "honahuku/kashiwagi"
  project_id                = "kashiwagi"
  region                    = "asia-northeast1"
  terraform_service_account = "terraform-sa@kashiwagi.iam.gserviceaccount.com"

  # 有効化するGoogle Cloud APIs
  services = toset([
    "iam.googleapis.com",                  # IAM
    "cloudresourcemanager.googleapis.com", # Resource Manager
    "iamcredentials.googleapis.com",       # Service Account Credentials
    "sts.googleapis.com"                   # Security Token Service API
  ])
}
