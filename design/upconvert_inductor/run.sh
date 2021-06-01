#!/bin/bash

xhost +
docker run --rm -ti --net=host -v $PWD:/asitic -w="/asitic" -e DISPLAY=:0 asitic /bin/bash -c "/asitic_linux -t /asitic/sky130.tek -x asitic.input"
