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