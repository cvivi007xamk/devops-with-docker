#!/bin/bash

git clone https://github.com/cvivi007xamk/docker-hy.github.io.git
docker build -t villeovirtanen/exercise-3.2:latest ./docker-hy.github.io/   
docker login
docker push villeovirtanen/exercise-3.2:latest