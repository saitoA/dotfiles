#!/bin/sh

cd ${HOME}
ln -s dotfiles/.vimrc .
ln -s dotfiles/.bashrc .
ln -s dotfiles/.vim .
ln -s dotfiles/.gitconfig .
ln -s dotfiles/.gitattributes .
ln -s dotfiles/.gitconfig_local .

git submodule init
git submodule update
