#!/bin/bash

build()
{
  #vars to change
  vendor=$1;
  imageName=$2;
  imageVersion=$3;
  #End vars to change

  echo "Initializing..."

  dockerFileName="$imageName.Dockerfile";
  imageNameWithVendor="$vendor/$imageName";
  tag="$imageNameWithVendor:$imageVersion"
  tagLatest="$imageNameWithVendor:latest"
  gcpRemoteRepository="europe-docker.pkg.dev/api-project-418984556101/cloud-builders"

  echo "Initialized"

  echo "Building..."
  docker build -t $tag -f $dockerFileName .
  echo "Builded"

  #GCP
  echo "Tagging..."
  docker tag $tag $gcpRemoteRepository/$tag
  docker tag $tag $gcpRemoteRepository/$tagLatest
  echo "Tagged"

  echo "Pushing..."
  docker push $gcpRemoteRepository/$tag
  docker push $gcpRemoteRepository/$tagLatest
  echo "Pushed"
  #GCP

  #Docker
  echo "Tagging..."
  docker tag $tag $tag
  docker tag $tag $tagLatest
  echo "Tagged"

  echo "Pushing..."
  docker push $tag
  docker push $tagLatest
  echo "Pushed"
  #Docker

 read -n 1 -s -r -p "Press any key to continue"
}
