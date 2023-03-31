#!/bin/bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

export IS_SLAM_OK=0

readonly CURRENT_DIR

for i in {0..9} ; do
    echo $i
    sleep 3
done

#for i in $it ; do
#  echo ${it[2]}
#  echo ${it[2]}
#done