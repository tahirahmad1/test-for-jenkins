FROM node:alpine
RUN npm install -g http-server
COPY . /src
WORKDIR /src
EXPOSE 8081
ENTRYPOINT [ "http-server", "-p", "8081" ]