FROM ubuntu:latest

WORKDIR /root


###  essential command lines
RUN ["apt-get", "update"]
RUN ["apt", "install", "-y", "zsh", "wget", "sudo"]
RUN ["apt", "install", "-y", "git"]
RUN ["apt", "install", "-y", "python3.8"]

# the -y is assumed to answer yes
RUN ["apt", "install", "-y", "vim-gtk"]  # vim-gtk enable vim with python support
RUN ["apt", "install", "tree"]

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

ENTRYPOINT ["zsh"]
