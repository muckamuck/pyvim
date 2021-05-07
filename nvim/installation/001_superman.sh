#!/bin/bash
set -e
if [ "$(id -u)" != "0" ]; then
    echo "Must be superman"
    exit 1
else
    echo "Superman!"
fi

apt-get install -y \
    build-essential \
    libuv1-dev \
    automake \
    libtool \
    libtool-bin \
    gettext \
    cmake \
    pkg-config \
    unzip

apt-get install -y \
    lua5.3 \
    npm \
    python3-dev \
    python3-pip \
    ripgrep

pip3 install virtualenv \
    python-language-server[all] \
    pyls-black \
    neovim \
    pdbpp

npm install -g typescript \
    typescript-language-server \
    bash-language-server \
    yaml-language-server \
    neovim

