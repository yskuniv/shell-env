#!/bin/bash

shell_name=$1
shell_env_dir=$(cd `dirname $0` && pwd -P)

cat <<EOF
source ${shell_env_dir}/${shell_name}rc.sh
EOF
