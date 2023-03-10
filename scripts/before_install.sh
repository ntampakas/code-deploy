#!/bin/bash
set -e

docker image prune --filter "until=8h" -f

exit 0
