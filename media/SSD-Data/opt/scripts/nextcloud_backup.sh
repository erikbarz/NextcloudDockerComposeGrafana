#!/bin/bash


# stopping all containers
sudo bash /media/SSD-Data/opt/scripts/nextcloud_stop.sh


# Backups directory is set here
cd /media/SSD-Data/backups


# var
echo "-----------------------------------------------------------------------"
echo "start backing up data in /media/SSD-Data/var/ "
sudo tar -cf var.tar /media/SSD-Data/var/ 


# opt
echo "-----------------------------------------------------------------------"
echo "start backing up configs in /media/SSD-Data/opt/ "
sudo tar -cf opt.tar /media/SSD-Data/opt/ 


# starting all containers again
echo "-----------------------------------------------------------------------"
echo "backup finished, starting all containers again"
sudo bash /media/SSD-Data/opt/scripts/nextcloud_start.sh
