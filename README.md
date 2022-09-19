# Install Docker on Debian

see here: https://docs.docker.com/engine/install/debian/ and https://docs.docker.com/engine/install/linux-postinstall/


# Steps to build image and create container and run/enter container

    ./build-image <Dockerfile-path>  # creates image with the "path:latest" as tag-name
    ./run-container <image-name> <container-name> <bind-mounted-local-work-dir>  # creates a container names "container-name"
    ./start-container <container-name>  # start (if not running) and enter the container
