terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
     vercel = {
      source = "vercel/vercel"
      version = "~> 0.3"
    }
  }
}