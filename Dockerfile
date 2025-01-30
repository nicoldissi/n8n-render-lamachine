# Utiliser l’image Alpine de n8n
FROM n8nio/n8n:latest

# Passer à l’utilisateur root
USER root
# Installer pdf-lib et d'autres dépendances si nécessaire
RUN npm install pdf-lib
# Installer Ghostscript et ImageMagick
RUN apk add --no-cache \
    ghostscript \
    imagemagick
