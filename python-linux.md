### Ubuntu 24.04

```
sudo apt update && sudo apt upgrade -y

sudo apt install python3 python3-dev git curl build-essential dkms perl wget gcc make default-libmysqlclient-dev libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python3-openssl git -y

curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash

sudo apt install zsh -y
chsh -s /bin/zsh

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo '[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(pyenv init -)"' >> ~/.zshrc

# Reiniciar o terminal

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Mudar ~/.zshrc -> ZSH_THEME="spaceship"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Mudar  ~/.zshrc -> plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
```

### Notas
- Necessário instalar Meslo Fonts (ou outra nerd font) e setá-la no terminal.
- Necessário instalar Fira Code fonts para o Visual Studio Code.



