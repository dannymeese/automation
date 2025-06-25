# ────────────────────────────────────────────────────────────────────
# n8n + FFmpeg on Alpine
# ────────────────────────────────────────────────────────────────────
FROM n8nio/n8n:1.46.0          # Alpine-based image (≈ 130 MB)

# ─── Install FFmpeg ────────────────────────────────────────────────
USER root
RUN apk add --no-cache ffmpeg   # pulls from Alpine community repo
USER node                       # drop back to non-root for security

# If you need other CLI tools
RUN apk add --no-cache curl jq bash

# If your workflows depend on a specific timezone
ENV TZ=America/Denver
RUN apk add --no-cache tzdata && \
    cp /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
