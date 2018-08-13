#!/usr/bin/env bash

docker rm -f gunicorn_docker
docker run -d -p 5000:5000 --name gunicorn_docker gunicorn_docker