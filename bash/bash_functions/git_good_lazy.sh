getgit () {
    if [ $1 == "vimrc" ]; then
        file="VegardFalmaar/Configuration/master/.vim/.vimrc_basic"
    else
        file=$1
    fi
    wget https://raw.githubusercontent.com/$file
}

lazygit() {
    git add -A
    git commit -m "$1"
    git push
}
