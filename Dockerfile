FROM ubuntu:16.04
MAINTAINER ozanunsal <ozanunsal@gmail.com>

RUN apt-get update && apt-get -y upgrade && apt-get -y install \
	kmod \
	gawk \
	wget \
	git-core \
	diffstat \
	unzip \
	texinfo \
	gcc-multilib \
	build-essential \
	chrpath \
	socat \
	cpio \
	python3 \
	python3-pip \
	python3-pexpect \
	xz-utils \
	debianutils \
	iputils-ping \
	libsdl1.2-dev \
	xterm \
	curl \
	vim \
	tzdata \
	uml-utilities \
	python3-virtualenv daemon \
	lighttpd \
	python3-gi python-pip python3-aptdaemon.gtk3widgets \
	locales apt-utils sudo \
    && dpkg-reconfigure locales && locale-gen en_US.UTF-8 && update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8

ENV LANG en_US.utf8

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN rm /bin/sh && ln -s /bin/bash /bin/sh 

COPY . /opt/yocto
WORKDIR /opt/yocto/workspace

RUN /bin/bash

