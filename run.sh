#!/bin/bash

set -e

usage() {
   echo "Usage:"
   echo "$0 <docker image>"

   exit 0
}

if [ -z "$1" ]; then
    echo "Please give docker image name"
    usage
else
    docker run --rm -it -v `pwd`:/opt/yocto "$1"
fi
