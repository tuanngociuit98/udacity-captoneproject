#!/usr/bin/env bash

## Complete the following steps to get Docker running locally
docker stop capstone-project
docker image  rm capstone-project
docker image rmi capstone-project
# Step 1:
# Build image and add a descriptive tag
 docker build --tag=capstone-project .
# Step 2: 
# List docker images
docker images --all
# Step 3: 
# Run flask app
docker run -p 8080:80 capstone-project

