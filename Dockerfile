# Utiliser l’image Alpine de n8n
FROM n8nio/n8n:latest

# Passer à l’utilisateur root
USER root

# Installer Ghostscript et ImageMagick
RUN apk add --no-cache \
    ghostscript \
    imagemagick
