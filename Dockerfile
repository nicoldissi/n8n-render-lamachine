# Utiliser l'image Alpine de n8n
FROM n8nio/n8n:latest

# Passer à l'utilisateur root
USER root

# Installer Ghostscript, ImageMagick et Node.js dependencies pour Stirling PDF
RUN apk add --no-cache \
    ghostscript \
    imagemagick \
    build-base \
    python3 \
    npm

# Installer Stirling PDF via npm
RUN npm install --global stirling-pdf
