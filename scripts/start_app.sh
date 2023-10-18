#!/bin/bash
set -e

docker run --name app1 --rm -dp 8080:8080 490752553772.dkr.ecr.eu-central-1.amazonaws.com/drill-1-backend:latest

exit 0
