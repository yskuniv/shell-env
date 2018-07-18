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
