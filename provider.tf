terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}
# Configure the Github provider
variable "GITHUB_TOKEN" {
  type = string
}
provider "github" {
  token = var.GITHUB_TOKEN
}