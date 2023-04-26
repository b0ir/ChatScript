FROM debian:stretch-slim AS chatscript-base
ENV DEBIAN_FRONTEND noninteractive
SHELL ["/bin/bash", "-c"]

RUN echo "deb http://archive.debian.org/debian stretch stretch-security main contrib non-free" > /etc/apt/sources.list

RUN apt-get update -y
RUN apt-get install -y autoconf unzip curl unzip


RUN mkdir -p /ChatScript/
WORKDIR /opt/alloxentric/ChatScript/
COPY / ./ 
WORKDIR /opt/alloxentric/
RUN chmod +x /opt/alloxentric/ChatScript/BINARIES/LinuxChatScript64