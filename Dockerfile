FROM n8nio/n8n:1.95.3

USER root

# התקנת החבילות דרך apk (כי Alpine)
RUN apk add --no-cache graphicsmagick tzdata

WORKDIR /data

EXPOSE $PORT

ENV N8N_USER_ID=root
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

CMD export N8N_PORT=$PORT && n8n start
