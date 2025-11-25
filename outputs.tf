output "minio_server" {
  description = "Adresse du serveur MinIO"
  value       = var.minio_server
}

output "bucket_name" {
  description = "Nom du bucket"
  value       = minio_s3_bucket.web_bucket.bucket
}

output "index_html_object" {
  description = "Nom du HTML dans le bucket"
  value       = minio_s3_object.index_html.object_name
}

output "style_css_object" {
  description = "Nom du CSS dans le bucket"
  value       = minio_s3_object.style_css.object_name
}

output "site_theorique_url" {
  description = "URL théorique d'accès à index.html"
  value       = "http://${var.minio_server}/${minio_s3_bucket.web_bucket.bucket}/${minio_s3_object.index_html.object_name}"
}
