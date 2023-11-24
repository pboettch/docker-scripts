FROM ubuntu:20.04

ENV TERM xterm
ENV DEBIAN_FRONTEND noninteractive

# install apt-add-repository
RUN apt update && apt -y install software-properties-common
RUN apt -y upgrade

RUN apt -y install gawk wget git-core diffstat unzip texinfo gcc-multilib \
     build-essential chrpath socat libsdl1.2-dev xterm \
	 python3-pip zstd lz4 cpio ninja-build meson rsync \
     locales sudo

RUN apt update && apt -y upgrade

RUN apt -y install build-essential ccache ecj fastjar file g++ gawk gettext \
	git java-propose-classpath libelf-dev libncurses5-dev libncursesw5-dev \
	libssl-dev python python2.7-dev python3 unzip wget python3-distutils \
	python3-setuptools rsync subversion swig time libffi-dev libtool xsltproc \
	zlib1g-dev u-boot-tools nodejs node-gyp npm jq

RUN adduser --disabled-password --gecos "User,,," --uid 1000 user
RUN chown user.user /home/user

RUN locale-gen en_US en_US.UTF-8

RUN echo "user ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

RUN apt -y clean

RUN apt update
RUN apt -y upgrade

RUN apt install -y git-gui gitk

USER user
RUN echo cd >> $HOME/.bashrc
