SHELL_ENV_DIR=$(cd `dirname $0` && pwd -P)


source $SHELL_ENV_DIR/alias.sh
source $SHELL_ENV_DIR/rbenv.sh
source $SHELL_ENV_DIR/pyenv.sh
source $SHELL_ENV_DIR/ssh-agent.sh

source $SHELL_ENV_DIR/zgen.sh

PROMPT='%B%n@%m:%F{cyan}[%~]%f%b
%# '

autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr     '%F{yellow}!%f'
zstyle ':vcs_info:git:*' unstagedstr   '%F{red}+%f'
zstyle ':vcs_info:*'     formats       '%F{blue}(%s)%f-%c%u%F{magenta}[%b]%f'
zstyle ':vcs_info:*'     actionformats '%F{blue}(%s)%f-%F{magenta}[%b|%a]%f'
precmd () { vcs_info }
RPROMPT='%B${vcs_info_msg_0_}%b'

# history
export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=1000
export SAVEHIST=10000
setopt hist_ignore_dups
setopt EXTENDED_HISTORY
