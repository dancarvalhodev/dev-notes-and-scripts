#!/bin/bash
sudo apt update && sudo apt upgrade -y

sudo apt install python3 python3-dev git curl build-essential dkms perl wget gcc make default-libmysqlclient-dev libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python3-openssl git -y

curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash

sudo apt install zsh -y
chsh -s /bin/zsh

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo '[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(pyenv init -)"' >> ~/.zshrc