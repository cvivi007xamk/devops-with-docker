FROM alpine

EXPOSE 8080 

WORKDIR /usr/src/app

ENV REQUEST_ORIGIN=http://localhost:5000

ENV PATH=$PATH:/usr/local/go/bin

COPY . .

RUN apk add --no-cache go gcc libc-dev && go build && go test ./... && \
    adduser -D appuser && \
    apk del go gcc libc-dev
    
USER appuser

CMD ["./server"]