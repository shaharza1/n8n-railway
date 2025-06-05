FROM n8nio/n8n:1.95.3

USER root

RUN apk add --update graphicsmagick tzdata

WORKDIR /data

EXPOSE $PORT

ENV N8N_USER_ID=root

CMD export N8N_PORT=$PORT && n8n start
