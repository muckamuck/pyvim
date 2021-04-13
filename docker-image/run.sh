#!/bin/bash

HOSTNAME=pluto
USER=chuck
IMAGE_HOME=${HOME}/${HOSTNAME}/${USER}

docker run -it \
    -u ${USER} \
    -h ${HOSTNAME} --rm \
    -v ${IMAGE_HOME}:/home/${USER} \
    -v ${HOME}/work:/work \
    -v ${HOME}/.ssh:/dot_ssh \
    -w /home/${USER} \
    nvim
