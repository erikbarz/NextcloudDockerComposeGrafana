#!/bin/bash


# stopping all containers
echo "-----------------------------------------------------------------------"
echo "stopping all containers: nextcloud stack"
sudo docker stop traefik-proxy
sudo docker stop nextcloud-apache-webserver
sudo docker stop cron-scheduler
sudo docker stop redis-cache
sudo docker stop mariadb


echo "-----------------------------------------------------------------------"
echo "stopping all containers: monitoring stack"
sudo docker stop prometheus-redis-exporter
sudo docker stop prometheus-mariadb-exporter
sudo docker stop prometheus-node-exporter
sudo docker stop prometheus-cadvisor-exporter
sudo docker stop prometheus-monitoring-db
sudo docker stop loki-log-collector
sudo docker stop grafana-monitoring-dashboards
sudo docker stop portainer-container-admin



echo "-----------------------------------------------------------------------"
echo "waiting 5s for all Containers to be finished"
sleep 5s

