#!/bin/bash
set -e
 
cd ~/app
docker build -t app1:latest .
 
exit 0
