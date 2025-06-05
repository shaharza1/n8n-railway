FROM n8nio/n8n:1.95.3

USER root

RUN apt-get update && \
    apt-get install -y graphicsmagick tzdata && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /data

EXPOSE $PORT

ENV N8N_USER_ID=root
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

CMD export N8N_PORT=$PORT && n8n start
