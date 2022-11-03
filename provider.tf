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