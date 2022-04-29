FROM alpine as build-stage

WORKDIR /usr/src/app

ENV PATH=$PATH:/usr/local/go/bin

ENV REQUEST_ORIGIN=http://localhost:5000

COPY . .

RUN apk add --no-cache go gcc libc-dev && \
    CGO_ENABLED=0 go build -o /usr/src/app/server

FROM scratch

EXPOSE 8080

ENV REQUEST_ORIGIN=http://localhost:5000

COPY --from=build-stage /usr/src/app/server /usr/src/app/server

ENTRYPOINT ["/usr/src/app/server"]