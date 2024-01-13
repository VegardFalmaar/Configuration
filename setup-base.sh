msg_fname=~/Documents/installation-messages.txt

sudo apt update && sudo apt upgrade
sudo apt install -y git curl vim htop tmux xsel cifs-utils smbclient

git config --global user.name "Vegard Falmår"
git config --global user.email "vegard.falmaar@me.com"

### clone repos
mkdir -p ~/Git
git clone git@github.com:VegardFalmaar/Books.git ~/Git/Books
git clone git@github.com:VegardFalmaar/Configuration.git ~/Git/Configuration
git clone git@github.com:VegardFalmaar/FalmaarTools.git ~/Git/FalmaarTools
git clone git@github.com:VegardFalmaar/interesting_code.git ~/Git/interesting_code
git clone git@github.com:VegardFalmaar/scripts.git ~/Git/scripts

echo ". ~/Git/Configuration/bash/bashrc_additions" >> ~/.bashrc
# ln -s ~/Git/Configuration/tmux/tmux_laptop.conf ~/.tmux.conf
ln -s ~/Git/Configuration/tmux/tmux_desktop.conf ~/.tmux.conf
mkdir -p ~/.vim/swap/
ln -s ~/Git/Configuration/vim/vimrc ~/.vimrc
ln -s ~/Git/Configuration/pylintrc ~/.pylintrc
echo "Dotfiles are set up. Please remove color prompt from ~/.bashrc" >> $msg_fname

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo "VimPlug is set up. Remember to run PlugInstall" >> $msg_fname

sudo snap install vlc

### install texlive
cd /tmp # working directory of your choice
wget https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
zcat < install-tl-unx.tar.gz | tar xf -
read -p 'Enter numbers in name of unpacked folder: ' folder_number
cd install-tl-$folder_number
sudo perl ./install-tl --no-interaction
echo "export PATH=/usr/local/texlive/2023/bin/x86_64-linux:\$PATH" >> ~/.bashrc
echo "export MANPATH=/usr/local/texlive/2023/texmf-dist/doc/man:\$MANPATH" >> ~/.bashrc
echo "export INFOPATH=/usr/local/texlive/2023/texmf-dist/doc/man:\$INFOPATH" >> ~/.bashrc
echo "TeXLive installed. Please verify installation path in ~/.bashrc" >> $msg_fname

echo "Done. Manually install Anaconda, Sublime Text, Spotify (from Software Store)," >> $msg_fname
echo Zoom, Teams, Discord >> $msg_fname
echo Remember to symlink Sublime Text snippets: >> $msg_fname
echo "ln -s ~/Git/Configuration/sublime-text/snippets ~/.config/sublime-text/Packages/User/snippets" >> $msg_fname
