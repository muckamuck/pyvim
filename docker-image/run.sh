#!/bin/bash

HOSTNAME=pluto
USER=chuck
IMAGE_HOME=${HOME}/work/pydev-home/${USER}

docker run -it \
    -u ${USER} \
    -h ${HOSTNAME} --rm \
    -v ${IMAGE_HOME}:/home/${USER} \
    -v ${HOME}/work:/work \
    -w /home/${USER} \
    pydev
