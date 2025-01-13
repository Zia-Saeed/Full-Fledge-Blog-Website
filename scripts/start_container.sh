#!/bin/bash
set -e

#pull the docker image from docker hub
docker pull ziasaeeditgeek/blog-website

# run the docker image as container
docker run -d -p 5000:5000 ziasaeeditgeek/blog-website 
