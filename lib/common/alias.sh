case $OSTYPE in
    darwin*)
        alias ls='ls -F -G'
        ;;
    linux-gnu)
        alias ls='ls -F --color=auto'
        ;;
esac

alias ll='ls -l'
alias la='ls -A'
