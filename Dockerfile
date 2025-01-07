FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y install build-essential wget git vim curl

RUN apt-get -y install r-base r-base-dev

# for devtools
RUN apt-get -y install libcurl4-openssl-dev libssl-dev \
    libgit2-dev libfontconfig1-dev libharfbuzz-dev \
    libfribidi-dev libfreetype6-dev libpng-dev \
    libtiff5-dev libjpeg-dev libxml2-dev \
    pandoc