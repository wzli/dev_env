#!/bin/sh
image=${1:-dev_env}
script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
docker run -dit --rm -p 22:22 --privileged -v /dev:/dev -v /tmp -v /var -v $script_dir/home:/home $image
