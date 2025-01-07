FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y install build-essential wget git vim curl

RUN apt-get -y install r-base r-base-dev