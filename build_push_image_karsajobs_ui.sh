#!/bin/bash

#membuat docker image dari dockerfile
docker build -t karsajobs-ui:latest .

#mengubah nama image
docker tag karsajobs-ui:latest ghcr.io/peanutbuttercandy/karsajobs-ui:latest

#login docker github packages
docker login ghcr.io -u peanutbuttercandy -p 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

#push image ke docker hub
docker push ghcr.io/peanutbuttercandy/karsajobs-ui:latest