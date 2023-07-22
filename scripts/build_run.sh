#!/bin/bash -e
TAG=benjamin_etheredge_resume
docker build -t $TAG -f scripts/Dockerfile .
docker run -v $(pwd):/app -p 4000:4000 $TAG jekyll serve --livereload