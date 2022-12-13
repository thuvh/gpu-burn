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

