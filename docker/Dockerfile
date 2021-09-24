FROM node:16

ARG APPLICATION_FILE
ENV APPLICATION_FILE=${APPLICATION_FILE}
COPY source/${APPLICATION_FILE}.yml /srv
COPY docker/build.sh /srv

VOLUME /srv/docs

RUN npm install -g swagger2openapi redoc-cli

RUN swagger2openapi --patch --yaml --outfile /srv/application.yaml /srv/${APPLICATION_FILE}.yml

WORKDIR /srv

ENTRYPOINT [ "/bin/bash","/srv/build.sh" ]
