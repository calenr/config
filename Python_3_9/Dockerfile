FROM ubuntu:20.04
RUN apt update \
    && apt upgrade -y
ARG QT_GRAPHICSSYSTEM="native"
RUN apt install -y software-properties-common \
    && add-apt-repository ppa:deadsnakes/ppa \
    && apt-get install -y python3.9
# Setup color for PS1
RUN echo "PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '" >> ~/.bashrc
SHELL ["/bin/bash", "-c"]
RUN apt-get update \
    && apt install -y \
    tmux \
    pylint \
    vim \
    wget \
    git \
    zip \
    unzip \
    curl \
    sudo

# Instal git LFS
RUN sudo curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash \
    && sudo apt-get install git-lfs \
    && git lfs install

# Install my vimrc file
RUN wget -O ~/.vimrc \
 'https://raw.githubusercontent.com/Lokera6/config/main/.vimrc'

# Install commitizen
# Install commitizen (which requires npm, which requires Node.js)
# see https://github.com/nodesource/distributions/blob/master/README.md
# see https://www.npmjs.com/package/commitizen
RUN apt-get update \
    && apt -y install \
    && curl -sL https://deb.nodesource.com/setup_15.x | sudo -E bash - \
    && apt-get install -y nodejs \
    && npm install -g commitizen

# INstall PIP
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py \
    && python get-pip.py \
    && rm get-pip.py
