FROM ubuntu:16.04

ENV TERM xterm
ENV DEBIAN_FRONTEND noninteractive

# install apt-add-repository
RUN apt update && apt-get -y install software-properties-common
RUN apt -y upgrade

RUN add-apt-repository ppa:george-edison55/cmake-3.x
RUN apt update

RUN apt -y install sudo git strace python3-pip python3-setuptools vim bsdmainutils pkg-config curl \
	git python autoconf automake autopoint autotools-dev libarchive13 libcurl3 libsigsegv2 libtool \
	m4 wget build-essential diffstat texinfo gawk chrpath unzip gcc-multilib libsdl1.2-dev xterm \
	cmake groff locales git-core socat cpio

RUN adduser --disabled-password --gecos "User,,," user
RUN echo "user ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers


RUN apt -y clean

RUN locale-gen "en_US.UTF-8"


CMD /bin/bash
