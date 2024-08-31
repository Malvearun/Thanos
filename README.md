# Prometheus and Thanos Sidecar Setup

This project sets up Prometheus with Thanos Sidecar using Docker and Docker Compose. The setup ensures that Prometheus metrics can be shipped and stored in long-term storage using Thanos.


## Table of Contents

- [Prometheus and Thanos Sidecar Setup](#prometheus-and-thanos-sidecar-setup)
  - [Table of Contents](#table-of-contents)
  - [Prerequisites](#prerequisites)
    - [1. Docker](#1-docker)
    - [2. Docker Compose](#2-docker-compose)
    - [3. Go (Golang)](#3-go-golang)
    - [4. Python](#4-python)
    - [5. Visual Studio Code](#5-visual-studio-code)
    - [6. Git](#6-git)
    - [7. Other Tools and Extensions](#7-other-tools-and-extensions)
  - [Project Structure](#project-structure)
  - [Getting Started](#getting-started)
    - [1. Clone the Repository](#1-clone-the-repository)
  - [Project Structure](#project-structure-1)
    - [2. Build the Docker Image](#2-build-the-docker-image)
    - [3. Start the Services](#3-start-the-services)
    - [4. Verify the Setup](#4-verify-the-setup)
    - [5. Access Prometheus](#5-access-prometheus)
    - [6. Thanos Object Storage Configuration](#6-thanos-object-storage-configuration)
    - [7. Stopping the Services](#7-stopping-the-services)
  - [File Details](#file-details)
    - [Dockerfile](#dockerfile)
    - [docker-compose.yml](#docker-composeyml)
    - [prometheus.yml](#prometheusyml)
  - [Troubleshooting](#troubleshooting)
    - [Permission Denied Errors](#permission-denied-errors)
    - [Thanos Object Storage Configuration](#thanos-object-storage-configuration)
  - [Contributing](#contributing)
  - [License](#license)

## Prerequisites

- Before you start, ensure you have the following software installed:

### 1. Docker

Docker is required to run Prometheus, Thanos Sidecar, and other related services in containers.

- **Installation Instructions:**
  - **Windows & macOS:** [Install Docker Desktop](https://www.docker.com/products/docker-desktop)
  - **Linux:** Follow the [official installation guide](https://docs.docker.com/engine/install/)

### 2. Docker Compose

Docker Compose is a tool used for defining and running multi-container Docker applications.

- **Installation Instructions:**
  - Docker Desktop comes with Docker Compose installed.
  - **Linux:** Install Docker Compose by following [this guide](https://docs.docker.com/compose/install/).

### 3. Go (Golang)

Go is a statically typed, compiled programming language designed for building reliable and efficient software.

- **Installation Instructions:**
  - Download and install from the [official Go website](https://golang.org/dl/).
  - Ensure Go is added to your system’s PATH.

### 4. Python

Python is a widely used high-level programming language for general-purpose programming.

- **Installation Instructions:**
  - **Windows & macOS:** Download from [Python&#39;s official website](https://www.python.org/downloads/).
  - **Linux:** Use your distribution’s package manager (e.g., `apt-get install python3` for Debian-based systems).

### 5. Visual Studio Code

Visual Studio Code is a powerful source code editor that runs on your desktop and is available for Windows, macOS, and Linux.

- **Installation Instructions:**
  - Download and install from the [Visual Studio Code website](https://code.visualstudio.com/).

### 6. Git

Git is a version control system that lets you manage and keep track of your source code history.

- **Installation Instructions:**
  - Download and install from the [official Git website](https://git-scm.com/).

### 7. Other Tools and Extensions

- **VS Code Extensions:**
  - [Docker Extension](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker) for managing Docker containers and images directly from VS Code.
  - [Go Extension](https://marketplace.visualstudio.com/items?itemName=golang.go) for Go development in VS Code.
  - [Python Extension](https://marketplace.visualstudio.com/items?itemName=ms-python.python) for Python development in VS Code.

## Project Structure

- `Dockerfile`: Builds the custom Thanos Sidecar image with the necessary directory and permission setup.
- `docker-compose.yml`: Defines the services (Prometheus and Thanos Sidecar) and their configurations.
- `prometheus.yml`: Configuration file for Prometheus.
- `bucket.yaml`: Configuration file for Thanos object storage (not included in the repo, you need to provide your own).

## Getting Started

### 1. Clone the Repository

## Project Structure

- `Dockerfile`: Builds the custom Thanos Sidecar image with the necessary directory and permission setup.
- `docker-compose.yml`: Defines the services (Prometheus and Thanos Sidecar) and their configurations.
- `prometheus.yml`: Configuration file for Prometheus.
- `bucket.yaml`: Configuration file for Thanos object storage (not included in the repo, you need to prov


### 2. Build the Docker Image

Build the custom Docker image for Thanos Sidecar: 

`docker-compose build`


### 3. Start the Services

Use Docker Compose to start Prometheus and Thanos Sidecar services:

`docker-compose up -d`


This will start the following services:

* **Prometheus** : Accessible at `http://localhost:9090`.
* **Thanos Sidecar** : Provides gRPC and HTTP endpoints.

### 4. Verify the Setup

Check the logs to ensure that both services are running correctly:

`docker-compose logs -f`


### 5. Access Prometheus

You can access the Prometheus UI at: `http://localhost:9090`


### 6. Thanos Object Storage Configuration

Make sure you provide a valid `bucket.yaml` file for Thanos Sidecar to upload data to your object storage. The `bucket.yaml` should define the configuration for your object storage provider (e.g., S3, GCS).

### 7. Stopping the Services

To stop the services, run: `docker-compose down`


## File Details

### Dockerfile

This Dockerfile is used to create a custom Thanos Sidecar image that ensures the necessary directories exist and permissions are set correctly.


### docker-compose.yml

Defines the Prometheus and Thanos Sidecar services and their configurations.


### prometheus.yml

Configuration file for Prometheus.


## Troubleshooting

### Permission Denied Errors

If you encounter permission denied errors, ensure that the `/prometheus` directory is properly created and has the right permissions. The Dockerfile provided in this repository takes care of these issues.

### Thanos Object Storage Configuration

Ensure your `bucket.yaml` is correctly set up to avoid errors related to object storage.

## Contributing

If you find issues or have suggestions, feel free to open an issue or submit a pull request.

## License


This `README.md` provides clear instructions for setting up and running Prometheus and Thanos Sidecar using Docker Compose, including troubleshooting tips and configuration details.
