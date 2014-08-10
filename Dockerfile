FROM ubuntu:14.04
MAINTAINER Hideyuki Takei <takehide22@gmail.com>

RUN apt-get update
RUN apt-get -y upgrade

RUN DEBIAN_FRONTEND=noninteractive apt-get -y install curl vim git mercurial

# ssh
#RUN apt-get install -y openssh-server
#RUN useradd -d /home/hide -m -s /bin/bash hide
#RUN mkdir /home/hide/.ssh
#RUN curl -L -k -o /home/hide/.ssh/authorized_keys -O https://dl.dropboxusercontent.com/u/180053/id_rsa.pub
#RUN echo 'hide ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

# docker
RUN curl -L -k -o /tmp/go.tar.gz -O http://golang.org/dl/go1.3.linux-amd64.tar.gz  
RUN tar -C /usr/local -xzf /tmp/go.tar.gz

# setting
RUN mkdir -p /usr/plugair/go
ENV GOROOT /usr/local/go
ENV GOPATH /usr/plugair/go
ENV PATH $PATH:$GOROOT/bin:$GOPATH/bin

