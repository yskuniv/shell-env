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


if ask_yes_no "CAUTION: This script will break current '.zshrc' if it exists. Is it OK?"; then
    cat <<"EOF" > "${HOME}/.zshrc"
SHELL_ENV="${HOME}/env/shell-env"

source "${SHELL_ENV}/zshrc.sh"
EOF

    echo "${HOME}/.zshrc is created."
fi