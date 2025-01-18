FROM n8nio/n8n:latest

USER root

# Installation de ghostscript et ImageMagick
RUN su -c "PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin && /usr/bin/apt-get update && \
    /usr/bin/apt-get install -y ghostscript imagemagick && \
    /usr/bin/apt-get clean && \
    rm -rf /var/lib/apt/lists/*"

# Installation générique pour image-shack
# En fonction de ce que vous utilisez, vous pouvez remplacer les commandes ci-dessous:

# Exemple d'installation si c'est un package npm
# RUN npm install -g image-shack-package

# Exemple si c'est un outil en ligne de commande
# RUN apt-get update && apt-get install -y image-shack-cli && apt-get clean && rm -rf /var/lib/apt/lists/*

# Si c'est une librairie python
# RUN pip install image-shack-python

# Si c'est une compilation depuis un dépôt git
# RUN git clone https://github.com/user/image-shack-repo.git /tmp/image-shack && cd /tmp/image-shack && make install

# Dans tous les cas il est recommandé de vérifier si il y a une installation spécifique
# sur la documentation ou la page du projet
