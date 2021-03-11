#! /bin/bash

# this scripts install common software

# the current script path
SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

# ---------------------------------------------------------------------------------------
# for YCM in vim
apt install build-essential cmake vim-nox python3-dev --yes
apt install mono-complete golang nodejs default-jdk npm --yes

# TODO exec git submodule in a pth
~/.vim/pack/autoplugs/start/ycm

# ---------------------------------------------------------------------------------------
