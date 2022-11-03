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