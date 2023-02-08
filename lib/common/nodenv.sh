NODENV_ROOT="$HOME/.nodenv"

if [ -d $NODENV_ROOT ]; then
    export PATH="$NODENV_ROOT/bin:$PATH"
    eval "$(nodenv init -)"
fi
