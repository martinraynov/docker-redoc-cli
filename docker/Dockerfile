FROM node:latest

ARG APPLICATION_FILE
ENV APPLICATION_FILE=${APPLICATION_FILE}
COPY source/${APPLICATION_FILE}.yml /srv
COPY docker/build.sh /srv

VOLUME /srv/output

RUN npm install -g swagger2openapi redoc-cli

RUN swagger2openapi --patch --yaml --outfile /srv/application.yaml /srv/${APPLICATION_FILE}.yml

RUN env
RUN redoc-cli --help

WORKDIR /srv

ENTRYPOINT [ "/bin/bash","/srv/build.sh" ]
