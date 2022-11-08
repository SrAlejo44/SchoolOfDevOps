#!/usr/bin/env bash

# Create folders for monitoring apps data
mkdir -p /opt/prometheus/data
mkdir -p /opt/grafana/data
mkdir -p /opt/alertmanager/data

chmod -R 0777 /opt/*

docker pull prom/prometheus
docker pull grafana/grafana-oss
docker pull quay.io/prometheus/alertmanager
docker pull idealista/prom2teams