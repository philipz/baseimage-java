FROM phusion/baseimage:0.9.10
MAINTAINER Philipz <philipzheng@gmail.com>

RUN apt-get update
RUN apt-get install -y python-software-properties
RUN apt-get install -y software-properties-common

# Install Java.
RUN \
  echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections && \
  add-apt-repository -y ppa:webupd8team/java && \
  apt-get update && \
  apt-get install -y oracle-java7-installer
