terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.4.1"
    }
  }
}

provider "local" {}

resource "local_file" "foo" {
  content  = var.foo_content
  filename = "${path.module}/${var.environment}-foo.txt"
}

resource "local_file" "bar" {
  content  = var.bar_content
  filename = "${path.module}/${var.environment}-bar.txt"
}