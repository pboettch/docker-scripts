FROM ubuntu:16.04

ENV TERM xterm
ENV DEBIAN_FRONTEND noninteractive

# install apt-add-repository
RUN apt update && apt-get -y install software-properties-common
RUN apt -y upgrade

RUN add-apt-repository ppa:george-edison55/cmake-3.x
RUN apt update

RUN adduser --disabled-password --gecos "User,,," user
RUN echo "user ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

RUN apt -y install git
RUN apt -y install strace
RUN apt -y install python3-pip python3-setuptools
RUN apt -y install vim bsdmainutils pkg-config
RUN apt -y install curl git python
RUN apt -y install autoconf automake autopoint autotools-dev
RUN apt -y install libarchive13 libcurl3 libsigsegv2 libtool m4
RUN apt -y install wget

RUN apt -y install build-essential diffstat texinfo gawk chrpath unzip
RUN apt -y install gcc-multilib libsdl1.2-dev xterm

RUN apt -y install cmake

RUN apt -y install groff

RUN apt -y install locales

RUN apt -y clean

RUN locale-gen "en_US.UTF-8"

CMD /bin/bash
