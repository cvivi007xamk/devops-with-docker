FROM ubuntu:20.04
COPY script.sh .
RUN apt-get update && apt-get install -y curl
RUN chmod +x script.sh
CMD ./script.sh