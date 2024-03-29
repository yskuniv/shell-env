.PHONY: zgen
zgen: ${HOME}/.zgen

.PHONY: iterm2_shell_integration.zsh
iterm2_shell_integration.zsh: ${HOME}/.iterm2_shell_integration.zsh

.PHONY: rbenv
rbenv: ${HOME}/.rbenv ${HOME}/.rbenv/plugins/ruby-build

.PHONY: pyenv
pyenv: ${HOME}/.pyenv

.PHONY: nodenv
nodenv: ${HOME}/.nodenv ${HOME}/.nodenv/plugins/node-build


${HOME}/.zgen:
	git clone https://github.com/tarjoilija/zgen.git $@

${HOME}/.iterm2_shell_integration.zsh:
	curl -L https://iterm2.com/shell_integration/zsh -o $@

${HOME}/.rbenv:
	git clone https://github.com/rbenv/rbenv.git $@

${HOME}/.rbenv/plugins/ruby-build: ${HOME}/.rbenv
	git clone https://github.com/rbenv/ruby-build.git $@

${HOME}/.pyenv:
	git clone https://github.com/pyenv/pyenv.git $@

${HOME}/.nodenv:
	git clone https://github.com/nodenv/nodenv.git $@

${HOME}/.nodenv/plugins/node-build: ${HOME}/.nodenv
	git clone https://github.com/nodenv/node-build.git $@
