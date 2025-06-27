provider "google" {
  project = "dark-throne-464103-h1"  # Reemplaza con tu ID de proyecto real si es diferente
  region  = "us-central1"
  credentials = "C:/..."
}

resource "google_storage_bucket" "static_site" {
  name     = "barberia-alura-project-2025"  # debe ser único a nivel mundial
  location = "us-central1"

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"  # en caso no se encuentre el sitio disponible 
  }

  uniform_bucket_level_access = true
}

resource "google_storage_bucket_iam_binding" "public_rule" {
  bucket = google_storage_bucket.static_site.name

  role = "roles/storage.objectViewer"
  members = [
    "allUsers",
  ]
}

resource "google_storage_bucket_object" "static_files" {
  for_each = fileset("${path.module}/website", "**")

  name   = each.value
  bucket = google_storage_bucket.static_site.name
  source = "${path.module}/website/${each.value}"
  content_type = lookup({
    html = "text/html"
    css  = "text/css"
    js   = "application/javascript"
    png  = "image/png"
    jpg  = "image/jpeg"
    jpeg = "image/jpeg"
    svg  = "image/svg+xml"
    gif  = "image/gif"
    webp = "image/webp"
  }, lower(trimspace(element(split(".", each.value), length(split(".", each.value)) - 1))), "application/octet-stream")
}

