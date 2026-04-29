# Flask CI/CD Pipeline — AWS ECS Fargate

![CI/CD](https://github.com/NkagisangCloud/flask-cicd-app/actions/workflows/deploy.yml/badge.svg)

## Overview
A fully automated CI/CD pipeline that deploys a containerized Python Flask application to AWS ECS Fargate using GitHub Actions with keyless OIDC authentication.

## Architecture
## Tech Stack
- **App:** Python Flask + Gunicorn
- **Container:** Docker
- **Registry:** Amazon ECR
- **Compute:** AWS ECS Fargate (serverless containers)
- **CI/CD:** GitHub Actions
- **Security:** OIDC (keyless authentication — zero static credentials)

## Security Highlight
This project uses OpenID Connect (OIDC) for keyless authentication between GitHub Actions and AWS. No static credentials are stored anywhere — GitHub Actions requests a short-lived JWT token which AWS exchanges for temporary 15-minute credentials.

## Pipeline Steps
1. Developer pushes code to `main` branch
2. GitHub Actions workflow triggers automatically
3. OIDC exchanges JWT token for temporary AWS credentials
4. Docker image built and tagged with git commit SHA
5. Image pushed to Amazon ECR
6. ECS Fargate service updated with rolling deployment
7. New container live — zero downtime

## AWS Services Used
- Amazon ECR — private Docker image registry
- Amazon ECS Fargate — serverless container orchestration
- AWS IAM — OIDC identity federation
- Amazon CloudWatch — container logging
