FROM amd64/node:10.10-jessie

LABEL maintainer="Florian JUDITH <florian.judith.b@gmail.com"

RUN cd /usr/share/ && \
    git clone https://github.com/tensorflow/playground

WORKDIR "/usr/share/playground"

RUN npm install && \
    npm audit fix && \
    npm run-script build

EXPOSE 8080

CMD ["/usr/local/bin/npm", "run", "serve"]