#!/bin/bash
docker network create my-net
docker-compose build --no-cache
docker-compose up