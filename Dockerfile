FROM n8nio/n8n:1.95.3

USER root

RUN apk add --no-cache graphicsmagick tzdata

WORKDIR /data

ENV N8N_USER_ID=root
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true
ENV PORT=5678

EXPOSE 5678

CMD ["n8n", "start"]
