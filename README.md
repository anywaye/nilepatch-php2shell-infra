# php2shell-infra

A PHP app deployed via docker-compose + Kubernetes + GitHub Actions CI.

## Vulnerability

Runs on PHP 8.4.25 (affected by php2shell CVE-2026-109618, CVE-2026-109619).

## Where PHP version is declared

1. `Dockerfile` — `FROM php:8.4.25-apache`
2. `docker-compose.yml` — `image: php:8.4.25-apache`
3. `k8s/deployment.yaml` — `image: php:8.4.25-apache`
4. `.github/workflows/deploy.yml` — builds and deploys the image

## Expected fix

Update PHP version in all 4 locations to 8.4.27+.
