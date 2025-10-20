$ErrorActionPreference = "Stop"
Write-Host "`nPLAY MODE - Smart Start" -ForegroundColor Cyan
if(-not (Test-Path ".\assets")){ New-Item -ItemType Directory -Path ".\assets" | Out-Null }
if(-not (Test-Path ".\assets\.env") -and (Test-Path ".\assets\.env.example")){
  Copy-Item ".\assets\.env.example" ".\assets\.env" -Force
}
docker pull mcr.microsoft.com/devcontainers/python:3.11 | Out-Null
docker compose up --build -d
Start-Sleep -Seconds 3
try{ $h = Invoke-RestMethod -Uri "http://localhost:8080/healthz" -TimeoutSec 10; Write-Host ("Health: {0}" -f ($h|ConvertTo-Json -Compress)) -ForegroundColor Green } catch {}
Write-Host "Open BUILD_MODE next to construct it by hand." -ForegroundColor Cyan
