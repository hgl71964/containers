# ubuntu cannot install torch
# inherit directly from pytorch/pytorch
FROM ubuntu:20.04

WORKDIR /root

###  essential command lines
RUN apt-get update -yes

Run apt update --yes && \
    apt install -y zsh wget sudo git tree

# install vim8.1 needed when install
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/London

RUN apt install-y vim-nox

COPY ./src .
RUN chmod +x setup.sh
RUN chmod +x vim_install.sh
RUN chmod +x c_dev_install.sh

ENTRYPOINT ["zsh"]
