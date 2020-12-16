FROM python:3.8

WORKDIR /usr/src/app


###  essential command lines
RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "zsh"]
RUN ["apt-get", "install", "-y", "git"]

# the -y is assumed to answer yes
RUN ["apt-get", "install", "-y","vim"] 
RUN ["apt-get", "install", "tree"] 

# install zsh
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true
###  end of command lines


###  get dot config files
RUN ["git","clone", "https://github.com/hgl71964/dot_config.git"]
COPY ./src .
###  end of dot config files


### install python packages
# COPY requirements.txt .
# RUN pip install -r requirements.txt
### end of python packages

#  TODO: add a bash file to auto config: 1. source dot file; 2. generate ssh key; 3. config name and email in git; 4. shell colouring
#  ENV ZSH_THEME agnoster
CMD ["zsh"]
