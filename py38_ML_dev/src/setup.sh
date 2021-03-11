#! /bin/bash

# this script automates setting up the environment

# the current script path
SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

# ---------------------------------------------------------------------------------------
# installation

apt upgrade --yes
apt install python3-pip --yes

apt install sudo --yes
sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade

# for YCM in vim
apt install build-essential cmake vim-nox python3-dev --yes

# ---------------------------------------------------------------------------------------
# make dot files

if [ ! -d "$dot_config" ]; then
    git clone --depth=1 https://github.com/hgl71964/dot_config.git
fi
cp dot_config/.vimrc dot_config/.zshrc .

# this overwrite the default prompt config
echo 'PROMPT="%B%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%1~  %(?.%{$fg[green]%}√.%{$fg[red]%}x)%b "' >> .zshrc

# clean up
rm -rf dot_config

# ---------------------------------------------------------------------------------------
# make zsh tools
if [ ! -d "$git_repo" ]; then
    mkdir git_repo
    git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting.git git_repo/zsh-syntax-highlighting
    git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions.git git_repo/zsh-autosuggestions
fi

# ---------------------------------------------------------------------------------------
# cli for linux sys

echo 'alias ls="ls --color=auto"' >> .zshrc
echo 'alias grep="grep --color=auto"' >> .zshrc
source .zshrc

# ---------------------------------------------------------------------------------------
# make vim

if [ ! -d "$.vim" ]; then
    mkdir -p .vim/pack/autoplugs/start
fi

git clone --depth=1 https://github.com/morhetz/gruvbox.git .vim/pack/autoplugs/start/gruvbox
git clone --depth=1 https://github.com/mg979/vim-visual-multi.git .vim/pack/autoplugs/start/visual_multi
git clone --depth=1 https://github.com/ycm-core/YouCompleteMe.git .vim/pack/autoplugs/start/ycm

# ---------------------------------------------------------------------------------------


# ---------------------------------------------------------------------------------------
