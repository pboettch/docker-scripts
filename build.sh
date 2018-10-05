#!/bin/bash

NAME=$(basename $1)

docker build -t $NAME $1
