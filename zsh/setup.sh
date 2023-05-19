# Usage: ./setup.sh

# Make sure zsh is installed
if [ $(which zsh) ]
then
    echo "ZSH is installed"
else
    echo "ZSH not installed - installing"
    sudo apt update
    sudo apt install zsh -y
    echo "You may need to set zsh as your default shell"
    echo "chsh -s $(which zsh)"
fi

#install oh my zsh
curl -Lo install.sh https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh install.sh --unattended --skip-chsh --keep-zshrc
rm install.sh

# install powerline fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

# install zshrc
SCRIPT_DIR=$(cd -P -- "$(dirname -- "$0")" && printf '%s\n' "$(pwd -P)/$(basename -- "$0")")
SCRIPT_DIR="$(dirname -- $SCRIPT_DIR)"
$SCRIPT_DIR/install_zshrc.sh

# Install pure
mkdir -p "$HOME/.zsh"
git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"

# install plugins
cd ~/.oh-my-zsh/custom/plugins
git clone https://github.com/zsh-users/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting


