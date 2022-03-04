#It's possible to run this app from just node image (there's no need to use for example ubuntu image as a base)
FROM node:16

EXPOSE 5000

WORKDIR /usr/src/app

COPY . .

RUN npm install

# We set the environment variable in docker-compose.yml
#ENV REACT_APP_BACKEND_URL=http://localhost:8080

RUN npm run build

RUN npm install -g serve

CMD ["serve", "-s", "-l", "5000", "build"]
