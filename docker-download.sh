#!/bin/bash

sudo yum install -y yum-utils

sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

sudo yum install https://download.docker.com/linux/centos/7/x86_64/stable/Packages/containerd.io-1.2.6-3.3.el7.x86_64.rpm -y

sudo yum install docker-ce docker-ce-cli -y

sudo systemctl start docker 

sudo systemctl status docker

sudo systemctl enable docker
