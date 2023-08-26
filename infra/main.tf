terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.79.0"
    }
  }

  backend "gcs" {
    bucket = "honahuku-kashiwagi-terraform"
  }
}

provider "google" {
  project = "kashiwagi"
  region  = "asia-northeast1"
  zone    = "asia-northeast1-b"
}
