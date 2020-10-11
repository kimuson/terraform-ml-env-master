resource "google_storage_bucket" "storage_bucket" {
  name          = var.bucket
  location      = var.region
  storage_class = "REGIONAL"
}

resource "google_storage_bucket_object" "content_folder" {
  name          = "input/"
  content       = "Not really a directory, but it's empty."
  bucket        = google_storage_bucket.storage_bucket.name
}