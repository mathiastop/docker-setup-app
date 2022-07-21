ARG NODE_VERSION=16.16

FROM node:${NODE_VERSION}-alpine as node

RUN wget https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh

RUN chmod +x wait-for-it.sh

RUN mv wait-for-it.sh /bin/wait-for-it

WORKDIR /srv/app

COPY . .

ENTRYPOINT [ "./docker-entrypoint.sh" ]