target "default" {
  context = "."
  dockerfile = "Dockerfile"
  args = {
    "OBSIDIAN_VERSION" = "1.6.7"
  }
  tags = ["registry.snowy-vibe.ts.net/obsidian-remote"]
  output = ["type=registry"]
}
