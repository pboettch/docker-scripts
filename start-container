#!/bin/bash

if [ $# -lt 1 ]
then
	cat >&2 <<-EOF
	Please provide at least 1 argument.

	usage: $0 ./start-container.sh <container-name> [<options passed to docker-exec>]
EOF

	exit 1
fi

if [ -n "$XAUTHORITY" ]
then
	XAUTH="-e XAUTHORITY"
fi

CONTAINER=$1

shift

docker start $CONTAINER
docker exec -it \
	-e DISPLAY \
	$XAUTH \
	-e LC_ALL=en_US.UTF-8 \
	-e LANG=en_US.UTF-8 \
	-e LANGUAGE=en_US.UTF-8 \
	$@ \
	$CONTAINER \
	bash

