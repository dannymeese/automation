# ────────────────────────────────────────────────────────────────────
# n8n + FFmpeg on Alpine
# ────────────────────────────────────────────────────────────────────
FROM n8nio/n8n:1.46.0          # Alpine-based image (≈ 130 MB)

# ─── Install FFmpeg ────────────────────────────────────────────────
USER root
RUN apk add --no-cache ffmpeg   # pulls from Alpine community repo
USER node                       # drop back to non-root for security
