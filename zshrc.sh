SHELL_ENV_DIR=$(cd `dirname $0` && pwd -P)


source $SHELL_ENV_DIR/alias.sh
source $SHELL_ENV_DIR/rbenv.sh
source $SHELL_ENV_DIR/pyenv.sh
source $SHELL_ENV_DIR/ssh-agent.sh

source $SHELL_ENV_DIR/zgen.sh
source $SHELL_ENV_DIR/zsh-prompt.sh

# history
export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=1000
export SAVEHIST=10000
setopt hist_ignore_dups
setopt EXTENDED_HISTORY
