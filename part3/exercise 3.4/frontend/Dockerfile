FROM ubuntu:18.04

EXPOSE 5000

WORKDIR /usr/src/app

COPY . .

ENV REACT_APP_BACKEND_URL=http://localhost:8080

RUN apt-get update && apt-get install -y curl && \
 curl -sL https://deb.nodesource.com/setup_16.x | bash && \
 apt install -y nodejs && \
 npm install && \
 npm run build && \
 npm install -g serve && \
 apt-get purge -y --auto-remove curl && \
 rm -rf /var/lib/apt/lists/* && \
 rm -rf /usr/src/app/node_modules && \
 useradd -m appuser && \
 chown -R appuser /usr/src/app

USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]
