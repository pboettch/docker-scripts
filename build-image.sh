#!/bin/bash

if [ $# -ne 1 ]
then
	cat >&2 <<-EOF
	Please provide exactly 1 argument.

	usage: $0 ./build-image.sh <path-to-Dockerfile>
EOF
	exit 1
fi
NAME=$(basename $1)

docker build -t $NAME $1
