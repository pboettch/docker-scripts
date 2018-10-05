FROM ubuntu:14.04

ENV TERM xterm
ENV DEBIAN_FRONTEND noninteractive

# install apt-add-repository
RUN apt-get update && apt-get -y install software-properties-common
RUN apt-get -y upgrade

RUN add-apt-repository ppa:george-edison55/cmake-3.x
RUN apt-get update

RUN adduser --disabled-password --gecos "User,,," user
RUN echo "user ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

RUN apt-get -y install git
RUN apt-get -y install strace
RUN apt-get -y install python3-pip python3-setuptools
RUN apt-get -y install vim bsdmainutils pkg-config
RUN apt-get -y install curl git python
RUN apt-get -y install autoconf automake autopoint autotools-dev
RUN apt-get -y install libarchive13 libcurl3 libsigsegv2 libtool m4
RUN apt-get -y install wget

RUN apt-get -y install build-essential diffstat texinfo gawk chrpath unzip
RUN apt-get -y install gcc-multilib libsdl1.2-dev xterm

RUN apt-get -y install cmake

RUN apt-get -y install groff

RUN apt-get -y clean

RUN locale-gen "en_US.UTF-8"

CMD /bin/bash
