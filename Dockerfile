FROM ubuntu:14.04
MAINTAINER Hideyuki Takei <takehide22@gmail.com>

RUN apt-get update
RUN apt-get install -y curl vim

RUN curl -L -k -o /tmp/go.tar.gz -O http://golang.org/dl/go1.3.linux-amd64.tar.gz  
RUN tar -C /usr/local/bin -xzf /tmp/go.tar.gz

