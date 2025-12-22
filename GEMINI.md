# GEMINI.md

## Project Overview

This project provides a Docker image to run Obsidian, a popular note-taking and knowledge base application, in a containerized environment. The image is based on Debian and includes `kasmvnc` to provide access to the Obsidian GUI through a web browser.

The project includes Dockerfiles for both `amd64` and `arm64` architectures, as well as a `docker-bake.hcl` file for building the images. The container is highly configurable through environment variables, allowing users to set a password, configure timezones, and even install additional packages.

The container exposes ports `8080` (HTTP) and `8443` (HTTPS) for accessing the Obsidian interface. It also uses volumes to persist Obsidian's configuration and vault data.

## Building and Running

### Building

The `README.md` provides instructions for building the image locally:

```bash
docker build --pull --rm -f "Dockerfile" -t obsidian-remote:latest "."
```

The `docker-bake.hcl` file can also be used with `docker buildx bake` to build the image.

### Running

The `README.md` provides detailed instructions for running the container, including examples for PowerShell and bash. Here is a basic example:

```bash
mkdir -p ob/{vaults,config}
docker run --rm -it \
  -v ./ob/vaults:/vaults \
  -v ./ob/config:/config \
  -p 8080:8080 \
  ghcr.io/sytone/obsidian-remote:latest
```

The container can be configured using a variety of environment variables, which are documented in the `README.md` file.

## Development Conventions

The project follows standard conventions for Docker-based projects. The `Dockerfile` is well-structured and commented. The `root` directory contains configuration and startup scripts that are copied into the image.

The `.github` directory contains workflows for publishing the Docker image to a container registry.

The `mise.toml` file indicates the use of the `mise` tool for managing development environment dependencies.
