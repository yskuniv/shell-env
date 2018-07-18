SHELL_ENV_DIR=$(cd `dirname $0` && pwd -P)


source $SHELL_ENV_DIR/common.sh

source $SHELL_ENV_DIR/zsh/zgen.sh
source $SHELL_ENV_DIR/zsh/prompt.sh
source $SHELL_ENV_DIR/zsh/iterm2.sh

# history
export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=1000
export SAVEHIST=10000
setopt hist_ignore_dups
setopt EXTENDED_HISTORY
