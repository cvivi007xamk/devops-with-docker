#!/bin/bash

git clone https://github.com/cvivi007xamk/simple-web-service.git
docker build -t villeovirtanen/exercise-3.2 ./simple-web-service/   
docker login
docker push villeovirtanen/exercise-3.2