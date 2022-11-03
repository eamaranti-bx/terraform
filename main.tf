resource "github_repository" "repo" {
  name        = "bx-front-${var.bx-project-name}"
  description = "Repositorio de ${var.bx-project-name}"
  visibility = "public"
  template {
    owner      = "eamaranti-bx"
    repository = "nextjs-starter-bx"
  }
}
resource "vercel_project" "front-project" {
  name      = "bx-front-${var.bx-project-name}"
  framework = "nextjs"
  git_repository = {
    type = "github"
    repo = "eamaranti-bx/bx-front-${var.bx-project-name}"
  }
}
resource "vercel_project_domain" "front-project-domain-qa" {
  project_id = vercel_project.front-project.id
  domain     = "${var.bx-project-name}.blue.cl"
  git_branch = "production"
}
resource "vercel_project_domain" "front-project-domain-qa" {
  project_id = vercel_project.front-project.id
  domain     = "${var.bx-project-name}.qa.blue.cl"
  git_branch = "staging"
}
resource "vercel_project_domain" "front-project-domain-dev" {
  project_id = vercel_project.front-project.id
  domain     = "${var.bx-project-name}.dev.blue.cl"
  git_branch = "development"
}