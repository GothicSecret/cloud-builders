FROM ubuntu:20.04

RUN DEBIAN_FRONTEND='noninteractive' apt-get update
RUN DEBIAN_FRONTEND='noninteractive' apt-get install nuget -y
