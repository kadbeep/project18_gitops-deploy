resource "random_pet" "release" {
  length = 2
}

resource "local_file" "release_note" {
  filename = "${path.module}/release-note.txt"
  content  = "Release ${random_pet.release.id}: ${var.message}\n"
}

resource "terraform_data" "deploy_marker" {
  input = var.message
}
