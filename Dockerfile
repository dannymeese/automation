FROM n8nio/n8n:1.46.0
USER root
RUN apt-get update && apt-get install -y ffmpeg \
    && apt-get clean && rm -rf /var/lib/apt/lists/*
USER node
