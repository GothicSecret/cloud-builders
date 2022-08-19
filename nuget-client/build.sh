#!/bin/bash

#vars to change
vendor="gothicsecret";
imageName="nuget-client";
imageVersion="0.0.1";
#End vars to change

source ./../docker-build.sh

build $vendor $imageName $imageVersion;
