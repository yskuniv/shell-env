PYENV_DIR="$HOME/.pyenv"

if [ -d $PYENV_DIR ]; then
    export PATH=$PYENV_DIR/bin:$PATH
    eval "$(pyenv init -)"
fi
