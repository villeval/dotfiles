#!/usr/bin/env bash

BASE_DIR="$HOME/.vim"
PLUGIN_DIR="$BASE_DIR/pack/plugins/start"
PLUGINS=(
  "kien/ctrlp.vim"
  "vim-airline/vim-airline"
  "vim-airline/vim-airline-themes"
  "scrooloose/nerdtree"
  "airblade/vim-gitgutter"
  "joshdick/onedark.vim"
)

mkdir -p $PLUGIN_DIR

for PLUGIN in ${PLUGINS[@]}; do
   DIRNAME="$(basename $PLUGIN)"
   git clone https://github.com/$PLUGIN.git $PLUGIN_DIR/$DIRNAME
done

