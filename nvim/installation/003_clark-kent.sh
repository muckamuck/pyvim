#!/bin/bash

cd $(dirname ${0})/..
source_dir=$(pwd)

if [ ! -d ${HOME}/.nvim/undodir ]; then
    mkdir -p ${HOME}/.nvim/undodir
fi

if [ ! -d ${HOME}/.config/nvim ]; then
    mkdir -p ${HOME}/.config/nvim
fi

curl -fLo \
    ${HOME}/.local/share/nvim/site/autoload/plug.vim \
    --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cd ${HOME}/.config/nvim
ln -sf ${source_dir}/lua
ln -sf ${source_dir}/init.vim
ln -sf ${source_dir}/README.md

cd ${HOME}/.config
ln -sf ${source_dir}/flake8
ln -sf ${source_dir}/pycodestyle
