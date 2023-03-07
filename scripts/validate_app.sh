#!/bin/bash

pgrep app1
[ $? -eq 0 ] || exit 1

exit 0
