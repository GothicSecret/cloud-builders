#!/bin/bash

#vars to change
vendor="gothicsecret";
imageName="replace-version-in-nuspec";
imageVersion="0.0.10";
#End vars to change

source ./../docker-build.sh

build $vendor $imageName $imageVersion;
