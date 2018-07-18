ask_yes_no () {
    msg="$1"

    echo -n "${msg} [Y/n]: "

    read ans

    case $ans in
        '[Yy]' | '[Yy]es' | '' )
            return 0
            ;;

        * )
            return 1
            ;;
    esac
}

# check OSTYPE
if [ x"$OSTYPE" = x'linux-gnu' ]; then

    # check ssh-agent process is running
    if ps x -o command | grep '^ssh-agent$' > /dev/null; then

        ssh_auth_sock_dir=$(find /tmp -maxdepth 1 -user `whoami` -regex '^/tmp/ssh-.*')

        # check ssh auth sock exists
        if [ x"$ssh_auth_sock_dir" = x ]; then
            return 1
        fi

        # setup ssh auth sock
        SSH_AUTH_SOCK=$(echo ${ssh_auth_sock_dir}/agent.*)
        SSH_AGENT_PID=$(echo ${SSH_AUTH_SOCK} | sed -e s+'^/tmp/ssh-.*/agent\.'++)

        export SSH_AUTH_SOCK SSH_AGENT_PID

    else

        if ask_yes_no 'Do you want to launch ssh-agent?'; then

            # launch ssh-agent
            eval `ssh-agent`

            echo "launched ssh-agent for you."

        fi
    fi
fi
