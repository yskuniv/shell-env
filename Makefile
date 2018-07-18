${HOME}/.zgen:
	git clone https://github.com/tarjoilija/zgen.git $@

${HOME}/.rbenv:
	git clone https://github.com/rbenv/rbenv.git $@

${HOME}/.rbenv/plugins/ruby-build: ${HOME}/.rbenv
	git clone https://github.com/rbenv/ruby-build.git $@

${HOME}/.pyenv:
	git clone https://github.com/pyenv/pyenv.git $@
