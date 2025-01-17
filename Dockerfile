FROM n8nio/n8n:latest

USER root

# Installation de ghostscript
RUN apt-get update && apt-get install -y ghostscript && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Installation de ImageMagick (si c'est ça que vous vouliez pour manipuler les images)
RUN apt-get update && apt-get install -y imagemagick && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

USER node
