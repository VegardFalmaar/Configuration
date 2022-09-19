msg_fname=~/Documents/installation-messages.txt

sudo apt update && sudo apt upgrade
sudo apt install -y git curl vim htop tmux xsel cifs-utils smbclient

git config --global user.name "Vegard Falmår"
git config --global user.email "vegard.falmaar@me.com"

### clone repos
git clone git@github.com:VegardFalmaar/Books.git
git clone git@github.com:VegardFalmaar/Codewars.git
git clone git@github.com:VegardFalmaar/Configuration.git
git clone git@github.com:VegardFalmaar/Delekatalog.git
git clone git@github.com:VegardFalmaar/interesting_code.git
git clone git@github.com:VegardFalmaar/scripts.git

echo ". ~/Documents/Configuration/bash/bashrc_additions" >> ~/.bashrc
ln -s ~/Documents/Configuration/tmux/tmux_laptop.conf ~/.tmux.conf
mkdir ~/.vim/swap/
ln -s ~/Documents/Configuration/vim/vimrc ~/.vimrc
echo "Dotfiles are set up. Please remove color prompt from ~/.bashrc" >> msg_fname

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo "VimPlug is set up. Remember to run PlugInstall" >> msg_fname

### install Xournalpp
sudo add-apt-repository ppa:andreasbutti/xournalpp-master
sudo apt update
sudo apt install xournalpp

snap install spotify
sudo snap install vlc
snap install slack

### install texlive
cd /tmp # working directory of your choice
wget https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
zcat install-tl-unx.tar.gz | tar xf -
cd install-tl-*
perl ./install-tl --no-interaction
echo "export PATH=/usr/local/texlive/2022/bin/x86_64-linux:$PATH" >> ~/.bashrc
echo "TeXLive installed. Please verify installation path in ~/.bashrc" >> msg_fname

echo Done. Manually install Anaconda, Atom, Zoom, Teams, Discord >> msg_fname
echo Remember to symlink Atom snippets >> msg_fname
