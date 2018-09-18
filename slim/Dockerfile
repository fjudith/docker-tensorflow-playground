FROM amd64/node:10.10-slim

LABEL maintainer="Florian JUDITH <florian.judith.b@gmail.com"

RUN apt-get update -yqq && \
    apt-get install --no-install-recommends git && \
    cd /usr/share/ && \
    git clone https://github.com/tensorflow/playground && \
    apt-get remove -y --purge git && \
    apt-get autoremove -y --purge && \
    apt-get clean && \
    rm -r /var/lib/apt/lists/* 

WORKDIR "/usr/share/playground"

RUN npm install && \
    npm audit fix && \
    npm run-script build

EXPOSE 8080

CMD ["/usr/local/bin/npm", "run", "serve"]