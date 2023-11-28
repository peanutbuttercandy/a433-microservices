#!/bin/bash

#membuat docker image dari dockerfile
docker build -t item-app:v1 .

#melihat list image
docker images

#mengubah nama image
docker tag item-app:v1 ghcr.io/peanutbuttercandy/item-app:v1

#login docker github packages
docker login ghcr.io -u peanutbuttercandy -p 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

#push image ke docker hub
docker push ghcr.io/peanutbuttercandy/item-app:v1