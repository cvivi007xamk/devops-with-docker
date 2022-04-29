FROM alpine as build-stage

ENV LC_ALL=C.UTF-8

ENV REACT_APP_BACKEND_URL=http://localhost:8080

WORKDIR /usr/src/app

COPY . .

RUN apk add --no-cache nodejs npm && \
    npm install && \
    npm run build 

FROM alpine

EXPOSE 5000

WORKDIR /usr/src/app

ENV LC_ALL=C.UTF-8

COPY --from=build-stage /usr/src/app/build /usr/src/app/build

RUN apk add --no-cache nodejs npm && \
    npm install -g serve && \
    adduser -D appuser && chown -R appuser /usr/src/app && \
    apk del npm

USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]