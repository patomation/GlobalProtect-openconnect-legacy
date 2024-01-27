#!/bin/bash -e

sudo apt-get update
sudo apt-get install -y \
    build-essential \
    qtbase5-dev \
    libqt5websockets5-dev \
    qtwebengine5-dev \
    qttools5-dev \
    qt5keychain-dev \
    openconnect \
    wget \

./scripts/install.sh
