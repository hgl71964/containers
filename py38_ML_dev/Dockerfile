FROM python:3.8

WORKDIR /usr/src/app

COPY requirements.txt .

RUN pip install -r requirements.txt

# to get zsh 
RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "zsh"]
# the -y is assumed to answer yes
RUN ["apt-get", "install", "-y","vim"] 
RUN ["apt-get", "install", "tree"] 
RUN ["git","clone", "https://github.com/hgl71964/dot_config.git"]

RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true
# end of zsh setting

COPY ./src .

#  TODO: automatically source the dot file
# CMD ["source", "/usr/src/app/dot_config/.zshrc"]
CMD ["zsh"]
#ENTRYPOINT ["bash"]
