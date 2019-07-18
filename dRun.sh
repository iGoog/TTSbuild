#!/usr/bin/env bash
sudo docker run --runtime=nvidia -it --rm -v $PWD/mnt:/mnt/ -p 5002:5002 mozilla-tts-b:latest
