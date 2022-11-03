terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}
# Configure the Github provider
provider "github" {
  token = "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"
}