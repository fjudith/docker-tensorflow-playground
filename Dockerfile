FROM amd64/node:9.11

LABEL maintainer="Florian JUDITH <florian.judith.b@gmail.com"

RUN cd /usr/share/ && \
    git clone https://github.com/tensorflow/playground

WORKDIR "/usr/share/playground"

RUN npm install && npm run build

EXPOSE 8080

CMD ["/usr/local/bin/npm", "run", "serve"]