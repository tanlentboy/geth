FROM ubuntu:trusty
RUN apt-get update -y && apt-get install -y software-properties-common && \
    add-apt-repository -y ppa:ethereum/ethereum
RUN apt-get update -y && apt-get install -y ethereum
USER root
RUN mkdir /root/.ethereum
