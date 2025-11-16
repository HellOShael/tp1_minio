variable "minio_server" {
  type        = string
  description = "Adresse du serveur MinIO"
  default     = "127.0.0.1:9000"
}

variable "minio_user" {
  type        = string
  description = "Utilisateur MinIO"
  default     = "minioadmin"
}

variable "minio_password" {
  type        = string
  description = "Mot de passe MinIO"
  sensitive   = true
}

variable "bucket_name" {
  type        = string
  description = "Nom du bucket"
  default     = "webbucket"
}
