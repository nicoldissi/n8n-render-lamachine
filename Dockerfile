# Utiliser l’image Alpine de n8n
FROM n8nio/n8n:latest

# Passer à l’utilisateur root
USER root

# Installer dépendances supplémentaires
RUN apk add --no-cache ghostscript imagemagick wget unzip

# Définir la version souhaitée de Stirling PDF (à adapter)
ARG STIRLING_PDF_VERSION="0.0.16"

# Récupérer et installer le binaire précompilé depuis GitHub
RUN wget -q "https://github.com/StirlingLabs/stirling-pdf/releases/download/v${STIRLING_PDF_VERSION}/stirling-pdf-x86_64-unknown-linux-musl.zip" \
    && unzip stirling-pdf-x86_64-unknown-linux-musl.zip -d /usr/local/bin \
    && chmod +x /usr/local/bin/stirling-pdf \
    && rm -f stirling-pdf-x86_64-unknown-linux-musl.zip
