#!/bin/bash

if [[ $# -le 0 ]]; then
   echo "Missing hostname"
   exit 1
fi

set -e
scp "$(dirname $(realpath $0))/bootstrap_redhat.sh" $1:
ssh $1 ./bootstrap_redhat.sh
