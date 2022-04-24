FROM ubuntu
RUN apt-get update && apt-get install -y curl && apt-get install -y git
# Still need to install Docker to the container
RUN curl -sSL https://get.docker.com/ | sh
WORKDIR /usr/src/app
COPY run.sh .

CMD bash run.sh