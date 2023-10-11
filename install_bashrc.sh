#!/bin/bash

ask_yes_no () {
    msg="$1"

    echo -n "${msg} [Y/n]: "

    read ans

    case $ans in
        "[Yy]" | "[Yy]es" | "" )
            return 0
            ;;

        * )
            return 1
            ;;
    esac
}


if ask_yes_no "CAUTION: This script will break current '.bashrc' if it exists. Is it OK?"; then
    cat <<"EOF" > "${HOME}/.bashrc"
SHELL_ENV="${HOME}/env/shell-env"

source "${SHELL_ENV}/bashrc.sh"
EOF

    echo "${HOME}/.bashrc is created."
fi
