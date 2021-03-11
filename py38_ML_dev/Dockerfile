# ubuntu cannot install torch
# inherit directly from pytorch/pytorch
FROM ubuntu:20.04 

WORKDIR /root


###  essential command lines
RUN ["apt-get", "update"]
RUN ["apt", "install", "-y", "zsh", "wget", "sudo"]
RUN ["apt", "install", "-y", "git"]
# RUN ["apt", "install", "-y", "python3.8"]  # ubuntu may have built-in python3.8
RUN ["apt", "install", "tree"]

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/London
# needed when install
RUN ["apt", "install", "-y", "vim-nox"]

# install zsh
# RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true
###  end of command lines




### install python packages
# COPY requirements.txt .
# RUN pip install -r requirements.txt
### end of python packages

#  TODO: add a bash file to auto config: 1. source dot file; 2. generate ssh key; 3. config name and email in git; 4. shell colouring
#  ENV ZSH_THEME agnoster

# setup bash script
COPY ./src .
RUN ["chmod", "+x", "setup.sh"]
RUN ["chmod", "+x", "install.sh"]

ENTRYPOINT ["zsh"]
