msg_fname=~/Documents/installation-messages.txt

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
ln -s ~/Git/Configuration/sublime-text/snippets ~/.config/sublime-text/Packages/User/snippets
ln -s ~/Git/Configuration/ssh_config ~/.ssh/config
echo "Dotfiles are set up. Please remove color prompt from ~/.bashrc" >> $msg_fname

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo "VimPlug is set up. Remember to run PlugInstall" >> $msg_fname
