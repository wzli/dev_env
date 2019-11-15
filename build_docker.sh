#!/bin/sh
image=${1:-"dev_env"}
docker build -t $image .
