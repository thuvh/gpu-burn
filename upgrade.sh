#!/bin/bash 

sudo -v

sudo apt update
sudo apt upgrade
sudo apt install -y vim git build-essential \
    tmux htop nload \
    sysstat iotop dstat \
    tcptraceroute net-tools wget \
    curl dnstop bash-completion \
    psmisc tree make \
    libssl-dev zlib1g-dev libbz2-dev \
    libreadline-dev libsqlite3-dev llvm \
    libncursesw5-dev xz-utils tk-dev \
    libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev
sudo apt autoremove

PROJECT_DIR=$HOME/projects
if [ ! -d $PROJECT_DIR ]; then
    mkdir -p $PROJECT_DIR
    REPO_DIR=$PROJECT_DIR/gpu-burn
    if [ ! -d $REPO_DIR ]; then
        git clone https://github.com/thuvh/gpu-burn.git
    fi
fi

