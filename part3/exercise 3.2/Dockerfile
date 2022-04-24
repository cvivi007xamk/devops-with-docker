FROM ubuntu
RUN apt-get update && apt-get install -y curl && apt-get install -y git
#RUN curl -sSL https://get.docker.com/ | sh
WORKDIR /usr/src/app
COPY run.sh .
#RUN chmod +x run.sh
#ENTRYPOINT ["./run.sh"]
CMD bash run.sh