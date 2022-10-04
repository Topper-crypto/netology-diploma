# Cloud ID
variable "cloud_id" {
  default = ""
}

# Folder ID
variable "folder_id" {
  default = ""
}

#Domain name
variable "domain" {
  default = "korovin80.site"
}

#Static Internal IP
variable "int_ip" {
  default = ""
}

#Static External IP
variable "ext_ip" {
  default = ""
}

#Token yandex
variable "token" {
  default = ""
  sensitive = true
}

#Image ID
variable "image_id" {
  default = "fd89jk9j9vifp28uprop"
}
