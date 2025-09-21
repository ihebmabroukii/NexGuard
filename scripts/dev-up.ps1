<#
.SYNOPSIS
Starts the NexGuard SIEM stack in Docker Compose.

.DESCRIPTION
Builds images, mounts configs, and starts Wazuh + ELK stack.
#>

param (
    [switch]$Rebuild
)

if ($Rebuild) {
    Write-Host "Rebuilding Docker images..."
    docker-compose -f ../deployments/docker/siem/docker-compose.yml build --no-cache
}

Write-Host "Starting NexGuard SIEM stack..."
docker-compose -f ../deployments/docker/siem/docker-compose.yml up -d

Write-Host "NexGuard SIEM stack is up."
Write-Host "Wazuh API: http://localhost:55000"
Write-Host "Elasticsearch: http://localhost:9200"
Write-Host "Kibana: http://localhost:5601"
