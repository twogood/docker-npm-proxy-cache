FROM node:4

RUN npm install -g npm-proxy-cache

VOLUME /cache

EXPOSE 8080

CMD ["npm-proxy-cache", "-h", "0.0.0.0", "-s", "/cache", "-t", "2592000", "-f"]
