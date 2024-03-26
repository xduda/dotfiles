#!/bin/bash

install_mosh() {
    curl https://mosh.org/mosh-1.4.0.tar.gz | tar xz
    cd mosh-1.4.0
    ./configure
    make install
    cd
}

install_ranger() {
    curl https://ranger.github.io/ranger-stable.tar.gz | tar xz
    cd ranger-1.9.3
    make install
    cd
}

# Install mosh dependencies
dnf install curl gcc-c++ openssl-devel ncurses-devel protobuf-devel perl
install_mosh

# Install ranger dependencies
dnf install python3
install_ranger

# Install other packages
dnf install tmux
