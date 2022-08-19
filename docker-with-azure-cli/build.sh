#!/bin/bash

#vars to change
vendor="gothicsecret";
imageName="docker-with-azure-cli";
imageVersion="0.0.5";
#End vars to change

source ./../docker-build.sh

build $vendor $imageName $imageVersion;
