#!/usr/bin/env bash

# This script runs docker-compose in background

chmod -R 0777 ./prom2teams/*

docker-compose up --force-recreate --build -d

chmod -R 0777 /opt/*