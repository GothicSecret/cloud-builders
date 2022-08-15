FROM gcr.io/cloud-builders/docker:20.10.14

RUN apt-get update
RUN DEBIAN_FRONTEND='noninteractive' apt-get install -y --no-install-recommends ca-certificates curl apt-transport-https lsb-release gnupg
RUN apt-get install -y ca-certificates wget
RUN curl -sL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | tee /etc/apt/trusted.gpg.d/microsoft.gpg > /dev/null
ARG AZ_REPO=bionic
RUN echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ $AZ_REPO main" | tee /etc/apt/sources.list.d/azure-cli.list
RUN apt-get update
RUN DEBIAN_FRONTEND='noninteractive' apt-get install -y --no-install-recommends azure-cli
