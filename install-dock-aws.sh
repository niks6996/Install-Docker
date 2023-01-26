#!/bin/bash

sudo yum install git -y

sudo yum install docker

sudo systemctl start docker

sudo systemctl enable docker

sudo systemctl status docker

sudo git clone https://github.com/niks6996/telegram-redirect.git

cd telegram-redirect/

sudo docker build -t nodejs/tele .

sudo docker run -d --name nodejstele -p 8081:3020 nodejs/tele

sudo docker ps
