#!/bin/bash
set -e

docker run --name app1 --rm -dp 8080:8080 app1:latest

exit 0
