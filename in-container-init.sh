#!/bin/bash

apt update -y

yes | unminimize

apt install -y man-db curl make

curl -L https://siakhooi.github.io/apt/siakhooi-apt.list >/etc/apt/sources.list.d/siakhooi-apt.list
curl -L https://siakhooi.github.io/apt/siakhooi-apt.gpg >/usr/share/keyrings/siakhooi-apt.gpg
apt update -y

apt install -y ./siakhooi-image-sitter_*_amd64.deb
