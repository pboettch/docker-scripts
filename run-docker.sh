#!/bin/bash

TOP_DIR=$(pwd)

if [ "$2" != "" ]
then
	TOP_DIR=$2
fi

if [ -n "$XAUTHORITY" ]
then
	XAUTH="-e XAUTHORITY -v ${XAUTHORITY}:${XAUTHORITY}"
fi

docker run \
	-v ${TOP_DIR}:${TOP_DIR} \
	-v ${HOME}:/home/user \
	-e DISPLAY \
	${XAUTH} \
	-e LC_ALL=en_US.UTF-8 \
	-e LANG=en_US.UTF-8 \
	-e LANGUAGE=en_US.UTF-8 \
	--net=host \
	-w $(pwd) \
	-i \
	-t \
	--privileged \
	-u 1000 \
	$1
