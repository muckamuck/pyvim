#### Specific neovim commit:
`a5ac2f45ff84a688a09479f357a9909d5b914294`

---

```bash
# as superman
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
```

---

```bash
mkdir -p ${HOME}/.nvim/undodir
curl -fLo \
    ${HOME}/.local/share/nvim/site/autoload/plug.vim \
    --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
