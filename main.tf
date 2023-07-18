resource "github_repository" "repo" {
  name        = "bx-front-${var.bx-project-name}"
  description = "Repositorio de ${var.bx-project-name}"
  visibility = "public"
  auto_init = true
  template {
    owner      = "eamaranti-bx"
    repository = "nextjs-starter-bx"
  }
  lifecycle {
    prevent_destroy = true
  }
}
resource "github_branch" "production" {
  repository = "bx-front-${var.bx-project-name}"
  branch     = "production"
  depends_on = [github_repository.repo]
}
resource "vercel_project" "front-project" {
  name      = "bx-front-${var.bx-project-name}"
  framework = "nextjs"
  git_repository = {
    type = "github"
    repo = "eamaranti-bx/bx-front-${var.bx-project-name}"
  }
  depends_on = [github_branch.production]
    lifecycle {
    prevent_destroy = true
  }
}