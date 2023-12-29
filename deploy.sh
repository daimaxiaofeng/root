#!/bin/bash


# web

cd ./repo/web && npm run build
cd -

sudo rm -rf /usr/share/nginx/html
sudo mv ./repo/web/dist /usr/share/nginx/html

# docker

sudo docker compose up -d

sudo docker ps -a
