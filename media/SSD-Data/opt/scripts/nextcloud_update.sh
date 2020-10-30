#!/bin/bash

echo "IMPORTANT REMINDER: version-tags must be updated before in compose-files and / or env-file "

# mounting Docker Volumes 
echo "-----------------------------------------------------------------------"
echo "Mounting Docker Volumes"
sudo mount --bind /media/SSD-Data/var/docker-volumes /var/lib/docker/volumes

echo "-----------------------------------------------------------------------"
# Pulling new Images
echo "Pulling new Images"
sudo docker-compose -f /media/SSD-Data/opt/docker-compose-files/nextcloud/docker-compose.yml pull
sudo docker-compose -f /media/SSD-Data/opt/docker-compose-files/monitoring/docker-compose.yml pull


# start NC 
echo "-----------------------------------------------------------------------"
echo "Starting Nextcloud and Monitoring with new versions"
sudo bash /media/SSD-Data/opt/scripts/nextcloud_start.sh
echo "-----------------------------------------------------------------------"
echo "Update and Restart finished"
