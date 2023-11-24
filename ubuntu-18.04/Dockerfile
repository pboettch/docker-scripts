FROM ubuntu:18.04

ENV TERM xterm
ENV DEBIAN_FRONTEND noninteractive

# install apt-add-repository
RUN apt update && apt -y install software-properties-common
RUN apt -y upgrade

RUN apt -y install git vim sudo groff

RUN adduser --disabled-password --gecos "User,,," user
RUN echo "user ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

# deps
RUN apt -y install autoconf binutils build-essential bzip2 cmake \
		diffutils flex gawk gcc git grep jq libboost-date-time-dev \
		libboost-filesystem-dev libboost-thread-dev libcurl4-openssl-dev \
		libssl-dev libtool make perl python3.6 subversion unzip uuid-dev \
		zlib1g-dev locales python2.7 wget libncurses-dev python-minimal rsync \
		u-boot-tools nodejs nodejs-dev node-gyp npm



RUN locale-gen en_US en_US.UTF-8

RUN apt -y clean

USER user
RUN echo cd >> $HOME/.bashrc
CMD /bin/bash
