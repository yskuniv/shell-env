#!/bin/bash

target_shell=$1
shell_env_dir=$(cd `dirname $0` && pwd -P)

if [ "x$target_shell" = x ]; then
    echo "Error: target shell is not specified" >&2
    exit 1
fi


cat <<EOF
source ${shell_env_dir}/${target_shell}rc.sh
EOF
