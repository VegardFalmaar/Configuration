sudo apt update && sudo apt upgrade
sudo apt install -y git curl vim htop tmux xsel cifs-utils smbclient

### clone repos
git clone git@github.com:VegardFalmaar/Books.git
git clone git@github.com:VegardFalmaar/Codewars.git
git clone git@github.com:VegardFalmaar/Configuration.git
git clone git@github.com:VegardFalmaar/Delekatalog.git
git clone git@github.com:VegardFalmaar/interesting_code.git
git clone git@github.com:VegardFalmaar/scripts.git

### Installing Xournalpp
sudo add-apt-repository ppa:andreasbutti/xournalpp-master
sudo apt update
sudo apt install xournalpp
