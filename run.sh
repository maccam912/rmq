#!/bin/bash
set -ex
# sudo dnf install git curl -y
# curl -sSL https://get.docker.com | bash
# systemctl enable --now docker
docker build -t server .
docker run -d -p 5672:5672 -p 15672:15672 -p 1883:1883 server
