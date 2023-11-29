#!/bin/bash

#membuat docker image dari dockerfile
docker build -t karsajobs:latest .

#mengubah nama image
docker tag karsajobs:latest ghcr.io/peanutbuttercandy/karsajobs:latest

#login docker github packages
docker login ghcr.io -u peanutbuttercandy -p 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

#push image ke docker hub
docker push ghcr.io/peanutbuttercandy/karsajobs:latest