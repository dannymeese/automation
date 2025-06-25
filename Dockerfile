FROM n8nio/n8n:1.46.0  

USER root
RUN apk add --no-cache ffmpeg   
USER node

RUN apk add --no-cache curl jq bash

ENV TZ=America/Denver
RUN apk add --no-cache tzdata && \
    cp /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
