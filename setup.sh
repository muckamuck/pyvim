#!/bin/bash

# Get Plug the plugin manager
curl -fLo ~/.vim/autoload/plug.vim \
    --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Make the Ubuntu (downstream distro) have all the stuff
sudo apt-get install -y curl \
    exuberant-ctags \
    git \
    ack-grep \
    python3-dev \
    python3-pip \
    tree \
    tig \
    apt-utils \
    build-essential \
    cmake \
    golang-go \
    npm \
    openjdk-11-jdk-headless \
    vim-nox
