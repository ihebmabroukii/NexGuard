<#
.SYNOPSIS
Stops the NexGuard SIEM stack in Docker Compose.
#>

Write-Host "Stopping NexGuard SIEM stack..."
docker-compose -f ../deployments/docker/siem/docker-compose.yml down

Write-Host "Stack stopped."
