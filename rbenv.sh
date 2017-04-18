RBENV_DIR=$HOME/.rbenv

if [ -d $RBENV_DIR ]; then
    export PATH=$RBENV_DIR/bin:$PATH
    eval "$(rbenv init -)"
fi
