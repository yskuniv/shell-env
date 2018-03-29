# load zgen
source "${HOME}/.zgen/zgen.zsh"

# if the init scipt doesn't exist
if ! zgen saved; then
    # specify plugins here
    zgen load zsh-users/zsh-completions
    zgen load zsh-users/zsh-syntax-highlighting

    # generate the init script from plugins above
    zgen save
fi

SHELL_ENV=$HOME/shell-env
source $SHELL_ENV/alias.sh
source $SHELL_ENV/rbenv.sh
source $SHELL_ENV/pyenv.sh
source $SHELL_ENV/ssh-agent.sh

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
