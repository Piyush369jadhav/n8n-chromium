FROM n8nio/n8n:1.108.2

USER root

# Install Chromium + dependencies for Alpine
RUN apk add --no-cache \
    chromium \
    nss \
    freetype \
    harfbuzz \
    ttf-freefont

# Optional: set Chromium path so n8n / Puppeteer can find it
ENV CHROME_PATH=/usr/bin/chromium-browser

USER node
