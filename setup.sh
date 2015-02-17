#!/bin/sh

cd ${HOME}
ln -s dotfiles/.vimrc .
ln -s dotfiles/.bashrc .
ln -s dotfiles/.vim .
ln -s dotfiles/.gitconfig .
ln -s dotfiles/.gitattributes .

cat << _EOT_ > .gitconfig_local
[user]
  name = saitoA
  email = postcardfromg@gmail.com
_EOT_
