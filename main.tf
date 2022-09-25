resource "local_file" "devopsprojectfile" {
  filename = var.content
  lifecycle {
    prevent_destroy = true
  }
}

variable "content" {
  default = "/root/devOpsfile"
}