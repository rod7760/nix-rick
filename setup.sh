# `./setup.sh`

# TODO should prob do zsh install here

# TODO need to conditionally do a lot of this stuff
# install devbox
curl -fsSL https://get.jetify.com/devbox | bash
# create shell
devbox global install

# make devbox global shell
echo "eval '$(devbox global shellenv --init-hook)'" >> ~/.bashrc


