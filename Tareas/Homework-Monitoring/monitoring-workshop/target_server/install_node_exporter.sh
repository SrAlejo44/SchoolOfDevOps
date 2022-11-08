#!/usr/bin/env bash

# This script installs and runs node_exporter

# Create logs file
touch node_exporter.log
echo "" > node_exporter.log

# Get node_exporter
wget https://github.com/prometheus/node_exporter/releases/download/v1.4.0/node_exporter-1.4.0.linux-amd64.tar.gz
tar xvfz node_exporter-1.4.0.linux-amd64.tar.gz

# Start node_exporter
cd node_exporter-1.4.0.linux-amd64 || exit
nohup ./node_exporter > node_exporter.log &