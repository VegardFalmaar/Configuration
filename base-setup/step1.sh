msg_fname=~/Documents/installation-messages.txt

sudo apt update && sudo apt upgrade
sudo apt install -y git curl vim htop tmux xsel cifs-utils smbclient

git config --global user.name "Vegard Falmår"
git config --global user.email "vegard.falmaar@me.com"

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
echo "export INFOPATH=/usr/local/texlive/2023/texmf-dist/doc/info:\$INFOPATH" >> ~/.bashrc
echo "TeXLive installed. Please verify installation path in ~/.bashrc" >> $msg_fname
