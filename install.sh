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

if [ -d "${HOME}/.vim" ]; then
    echo "Archiving .vim to ${backup}"
    mv ${HOME}/.vim ${backup}/.
fi

for thing in .pdbrc .vim .vimrc
do
    echo "Installing ${thing}"
    ln -s $(pwd)/${thing} ${HOME}/${thing}
done
