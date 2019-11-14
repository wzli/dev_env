#!/bin/sh
image=${1:-dev_env}
home_dir=$( cd $(dirname $0) && pwd )/home
docker run -dit --rm -p 2222:22 --privileged -v /dev:/dev -v /tmp -v /var -v $home_dir:/home $image
