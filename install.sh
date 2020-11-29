#!/bin/bash
set -e

cd "$(dirname "${0}")"

dtstr=`date +'%Y%m%d_%H%M%S'`
backup=${HOME}/.pyvim_backup_${dtstr}
echo "Making ${backup} to back existing stuff"
mkdir ${backup}

if [ -f "${HOME}/.pdbrc" ]; then
    echo "Archiving .pdbrc to ${backup}"
    mv ${HOME}/.pdbrc ${backup}/.
fi

if [ -f "${HOME}/.vimrc" ]; then
    echo "Archiving .vimrc to ${backup}"
    mv ${HOME}/.vimrc ${backup}/.
fi

for thing in .pdbrc .vimrc
do
    echo "Installing ${thing}"
    ln -s $(pwd)/${thing} ${HOME}/${thing}
done
