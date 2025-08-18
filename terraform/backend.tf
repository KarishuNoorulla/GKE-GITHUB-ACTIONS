terraform {
  backend "gcs" {
    bucket = "tf-state-bucket-nimble-petal-465609-a0"
    prefix = "terraform/state"
  }
}
