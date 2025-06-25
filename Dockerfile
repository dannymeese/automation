FROM n8nio/n8n:1.46.0

USER root
RUN apk add --no-cache ffmpeg curl jq bash tzdata \
    && cp /usr/share/zoneinfo/America/Denver /etc/localtime \
    && echo "America/Denver" > /etc/timezone
ENV TZ="America/Denver"
USER node
