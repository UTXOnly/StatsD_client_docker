#!/bin/bash
cat ./StatsD_client.py | grep statsd
docker-compose build --no-cache
docker-compose up -d
