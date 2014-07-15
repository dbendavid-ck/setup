cd ~
rm .bashrc
ln -s /www/git-repos/setup/.bashrc .bashrc
source .bashrc
rm .vimrc
ln -s /www/git-repos/setup/.vimrc .vimrc
rm .gitconfig
ln -s /www/git-repos/setup/.gitconfig .gitconfig
ln -s /www/git-repos/setup/.ctags .ctags
