variable "OBSIDIAN_VERSION" {
  type = string
  default = "1.9.10"
}

target "default" {
  context = "."
  dockerfile = "Dockerfile"
  args = {
    "OBSIDIAN_VERSION" = "${OBSIDIAN_VERSION}"
  }
  tags = ["registry.snowy-vibe.ts.net/obsidian-remote:${OBSIDIAN_VERSION}"]
  output = ["type=registry"]
}
