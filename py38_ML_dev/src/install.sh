#! /bin/bash

# this scripts install common software

# the current script path
SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

# ---------------------------------------------------------------------------------------
# for YCM in vim

git clone --depth=1 --recurse-submodules https://github.com/ycm-core/YouCompleteMe.git .vim/pack/autoplugs/start/ycm
apt install build-essential cmake vim-nox python3-dev --yes
apt install mono-complete golang nodejs default-jdk npm --yes

python3 ~/.vim/pack/autoplugs/start/ycm/install.py --all

# ---------------------------------------------------------------------------------------
