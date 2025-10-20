#!/usr/bin/env bash
set -euo pipefail
mkdir -p assets
[ -f assets/.env ] || cp assets/.env.example assets/.env
docker pull mcr.microsoft.com/devcontainers/python:3.11 >/dev/null 2>&1 || true
docker compose up --build -d
sleep 2
curl -fsS http://localhost:8080/healthz || true
echo "Open the Build Mode kit to construct it by hand."
