FROM debian:jessie
MAINTAINER BlankOn Developer <blankon-dev@googlegroups.com>

# Set Non Interactive Mode
ENV DEBIAN_FRONTEND noninteractive

# Set GPG
RUN gpg --keyserver pgpkeys.mit.edu --recv-key 91824AB09120A048 && gpg -a --export 91824AB09120A048 | apt-key add -

# Inject Repo
RUN echo "deb http://arsip.blankonlinux.or.id/blankon/ uluwatu main restricted extras extras-restricted" > /etc/apt/sources.list && \
    apt update && \
    apt dist-upgrade -y

