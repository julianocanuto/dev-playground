# Dev Playground

A Dockerized development environment based on Ubuntu 22.04, pre-configured with essential tools and setup scripts to jumpstart your development workflow.

## 🚀 Overview

This repository provides a portable and consistent development environment. It uses Docker to orchestrate a containerized Ubuntu system where you can clone projects, experiment with code, or use AI-assisted coding tools.

## 🛠️ Prerequisites

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)

## 🏁 Getting Started

1.  **Build and start the container:**
    ```bash
    docker compose up -d
    ```

2.  **Access the development environment:**
    ```bash
    docker compose exec dev bash
    ```

3.  **To stop the container:**
    ```bash
    docker compose down
    ```

## 📂 Project Structure

- `Dockerfile`: Defines the base environment (Ubuntu 22.04) and triggers the initial setup.
- `docker-compose.yml`: Manages the container configuration and volumes.
- `playground/`: The primary directory for your active project code. This directory is mounted into the container.
- `scripts/`: Contains several automation scripts:
    - `entrypoint.sh`: Runs automatically when the container starts to ensure tools are ready.
    - `initialization.sh`: Updates the system and installs core certificates.
    - `install-git.sh`: Installs and verifies the Git version control system.
    - `install-claude-code.sh`: Installs the [Claude Code](https://claude.ai/install.sh) CLI.
    - `install-tmux.sh`: Installs and verifies the Tmux terminal multiplexer.

## 🔧 Included Tools

*   **Git**: Pre-installed and ready for version control.
*   **Claude Code**: A powerful agentic coding assistant accessible via the `claude` command.
*   **Tmux**: Terminal multiplexer for managing multiple terminal sessions.

## 📝 Usage Note

When modifying scripts in the `scripts/` directory from a Windows host, the container will automatically attempt to handle line ending conversions (CRLF to LF) during the build process to ensure shell compatibility.
