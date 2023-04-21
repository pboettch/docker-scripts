FROM centos:7

RUN yum -y update

RUN yum -y install sudo git libpng make gcc gcc-c++ zlib-devel \
	openssl-devel bison flex which wget libffi-devel libjpeg-devel \
	patch bzip2-devel sqlite-devel xorg-x11-server-Xvfb libpng12 \
	libXrender libXi libXrandr libXcursor libXinerama libXft \
	fontconfig freetype libxkbcommon-x11 xcb-util-keysyms xcb-util-image xcb-util-renderutil xcb-util-wm \
	environment-modules libicu mesa-dri-drivers pcre2-devel \
	openjpeg2-devel libtiff-devel libwebp-devel

# add fr_FR.utf8 locale
RUN sudo sed -i 's/=en_US.utf8/=fr_FR.utf8,en_US.utf8/g' /etc/yum.conf
RUN yum -y reinstall glibc-common

RUN adduser --uid 1000 user
RUN chown user.user /home/user

RUN echo "user ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

USER user
RUN echo cd >> $HOME/.bashrc
