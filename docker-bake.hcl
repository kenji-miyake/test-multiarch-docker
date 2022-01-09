group "default" {
  targets = ["foo", "bar"]
}

// For docker/metadata-action
target "docker-metadata-action-foo" {}
target "docker-metadata-action-bar" {}

target "foo" {
  inherits = ["docker-metadata-action-foo"]
  dockerfile = "Dockerfile"
  target = "foo"
}

target "bar" {
  inherits = ["docker-metadata-action-bar"]
  dockerfile = "Dockerfile"
  target = "bar"
}
