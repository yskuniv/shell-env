TARGET_DIR	= ${HOME}

default:

${TARGET_DIR}/.zgen:
	git clone https://github.com/tarjoilija/zgen.git $@

${TARGET_DIR}/.rbenv:
	git clone https://github.com/rbenv/rbenv.git $@

${TARGET_DIR}/.rbenv/plugins/ruby-build: ${TARGET_DIR}/.rbenv
	git clone https://github.com/rbenv/ruby-build.git $@
