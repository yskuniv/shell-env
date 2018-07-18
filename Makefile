.PHONY: bashrc
bashrc: ${HOME}/.bashrc

.PHONY: zshrc
zshrc: ${HOME}/.zshrc

.PHONY: zgen
zgen: ${HOME}/.zgen

.PHONY: rbenv
rbenv: ${HOME}/.rbenv

.PHONY: pyenv
pyenv: ${HOME}/.pyenv


${HOME}/.bashrc:
	test ! -f $@
	./gen-rcfile.sh bash > $@

${HOME}/.zshrc:
	test ! -f $@
	./gen-rcfile.sh zsh > $@

${HOME}/.zgen:
	git clone https://github.com/tarjoilija/zgen.git $@

${HOME}/.rbenv:
	git clone https://github.com/rbenv/rbenv.git $@

${HOME}/.rbenv/plugins/ruby-build: ${HOME}/.rbenv
	git clone https://github.com/rbenv/ruby-build.git $@

${HOME}/.pyenv:
	git clone https://github.com/pyenv/pyenv.git $@
