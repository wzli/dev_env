#!/bin/sh
image=${1:-"dev_env"}
port=${2:-2222}
home_dir=$( cd $(dirname $0) && pwd )/home
docker run -dit --rm -p $port:22 --privileged -v /dev:/dev -v /tmp -v /var -v $home_dir:/home $image
