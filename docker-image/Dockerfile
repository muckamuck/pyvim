FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get dist-upgrade -y
RUN apt-get install -y vim
RUN apt-get install -y curl exuberant-ctags git ack-grep
RUN apt-get install -y python3-dev python3-pip
RUN apt-get install -y tree tig apt-utils
RUN apt-get install -y build-essential cmake vim
RUN apt-get install -y npm
RUN apt-get install -y neofetch
RUN pip3 install pep8 flake8 pyflakes isort yapf awscli virtualenv pylint
RUN useradd -d /home/chuck -m -k /etc/skel -u 501 -s /bin/bash chuck
RUN apt-get install -y sudo
RUN echo "chuck ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/chuck

CMD ["/bin/bash"]
###############################################################################
# Notes:                                                                      #
###############################################################################
# https://github.com/muckamuck/aws-docker.git                                 #
# git clone https://github.com/muckamuck/pyvim.git                            #
# cd pyvim; ./install.sh                                                      #
###############################################################################
