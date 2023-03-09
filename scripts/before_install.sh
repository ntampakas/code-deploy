#!/bin/bash
set -e

sleep 5

cd ~/app
docker build -t app1:latest .

exit 0
