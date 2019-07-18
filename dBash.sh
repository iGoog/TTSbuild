#!/usr/bin/env bash
sudo docker run --runtime=nvidia -it -w / -v $PWD/mnt:/mnt/ -e HOST_PERMS="$(id -u):$(id -g)" mozilla-tts-b bash
