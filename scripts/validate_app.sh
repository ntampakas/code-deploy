#!/bin/bash

pgrep app1
[ $? -eq 1 ] || exit 1

exit 0
