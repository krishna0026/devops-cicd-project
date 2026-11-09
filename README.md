# End-to-End CI/CD Pipeline

An intermediate-level DevOps project demonstrating
an automated CI/CD pipeline using GitHub Actions,
Docker, Trivy and GitHub Container Registry.

## Project Objectives

- Automate application testing.
- Implement code quality checks.
- Build Docker images.
- Scan images for vulnerabilities.
- Publish images to GHCR.
- Deploy applications to Ubuntu.
- Implement health checks and rollback.

## Technology Stack

- Python
- FastAPI
- Pytest
- Git and GitHub
- GitHub Actions
- Docker
- Docker Compose
- Trivy
- GitHub Container Registry
- Ubuntu Linux

## Current Implementation

- Python application
- REST API endpoints
- Application health endpoint
- Automated API tests

## Run Locally

Install dependencies:

    pip install -r requirements.txt

Run tests:

    python -m pytest -v

Start application:

    python -m uvicorn app.main:app --reload

Health endpoint:

    http://127.0.0.1:8000/health

## Project Status

Version: 0.1.0

Development in progress.
