#!/usr/bin/env bash

BASE_DIR="$HOME/.vim"
PLUGIN_DIR="$BASE_DIR/pack/plugins/start"
PLUGINS=(
  "kien/ctrlp.vim"
  "itchyny/lightline.vim"
  "scrooloose/nerdtree"
  "airblade/vim-gitgutter"
  "joshdick/onedark.vim"
  "dracula/vim"
  "fatih/vim-go"
)

mkdir -p $PLUGIN_DIR

for PLUGIN in ${PLUGINS[@]}; do
   DIRNAME="$(basename $PLUGIN)"
   # special handling for dracula
   if [ $DIRNAME = "vim" ]; then
      DIRNAME="dracula"
   fi
   git clone https://github.com/$PLUGIN.git $PLUGIN_DIR/$DIRNAME
done

