FROM n8nio/n8n:latest

USER root

# Installer rust et cargo
RUN apk add --no-cache \
    ghostscript \
    imagemagick \
    build-base \
    python3 \
    rust \
    cargo

# Compiler et installer Stirling PDF
RUN cargo install stirling-pdf
