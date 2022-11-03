terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

# Configure the GitHub Provider

provider "github" {
  token = "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"
  owner = "eamaranti-bx"
}

resource "github_repository" "github-repo-1" {
  name        = "terraform-demo-1"
  description = "My awesome codebase"

  visibility = "public"
  template {
    owner      = "eamaranti-bx"
    repository = "bx-api-catalog"
  }
}