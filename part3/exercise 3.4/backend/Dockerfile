FROM ubuntu:18.04

EXPOSE 8080 

WORKDIR /usr/src/app

ENV REQUEST_ORIGIN=http://localhost:5000

ENV PATH=$PATH:/usr/local/go/bin

COPY . .

RUN apt-get update &&  apt-get install -y \
    wget && \
    wget https://dl.google.com/go/go1.16.15.linux-arm64.tar.gz && \
    rm -rf /usr/local/go && tar -C /usr/local -xzf go1.16.15.linux-arm64.tar.gz && \
    rm -rf go1.16.15.linux-arm64.tar.gz && \
    apt-get purge -y --auto-remove wget && \
    rm -rf /var/lib/apt/lists/* && \
    go build && \
    useradd -m appuser
    
USER appuser

CMD ["./server"]