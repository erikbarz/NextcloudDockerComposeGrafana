#!/bin/bash


# mount Docker Volumes to external directory
echo "-----------------------------------------------------------------------"
echo "mount Docker Volumes to external directory"
sudo mount --bind /media/SSD-Data/var/docker-volumes /var/lib/docker/volumes


# start Monitoring
echo "-----------------------------------------------------------------------"
echo "Starting Monitoring: Prometheus, Grafana, Loki, Portainer, Cadvisor"
sudo docker-compose -f /media/SSD-Data/opt/docker-compose-files/monitoring/docker-compose.yml --env-file /media/SSD-Data/opt/docker-compose-files/docker-compose.env up -d


# start NC 
echo "-----------------------------------------------------------------------"
echo "Starting Nextcloud: Apache, Cron, Redis, Maria DB, Traefik"
sudo docker-compose -f /media/SSD-Data/opt/docker-compose-files/nextcloud/docker-compose.yml --env-file /media/SSD-Data/opt/docker-compose-files/docker-compose.env up -d
echo "-----------------------------------------------------------------------"
echo "Monitoring-Stack and Nextcloud-Stack started"
