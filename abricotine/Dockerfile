FROM debian:stretch

RUN apt-get update \
 && apt-get install curl ca-certificates \
                    git \
                    gconf2 \
                    gconf-service \
                    gvfs-bin \
                    libcap2 \
                    libgtk2.0-0 \
                    libnotify4 \
                    libnss3 \
                    libxtst6 \
                    python \
                    xdg-utils \
                    libx11-xcb-dev \
                    libxss1 \
                    libasound-dev \
                    --no-install-recommends -y \
 && curl -L "https://github.com/brrd/Abricotine/releases/download/0.6.0/Abricotine-0.6.0-ubuntu-debian-x64.deb" -o abricotine.deb \
 && mkdir /data \
 && dpkg -i abricotine.deb \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /data

ENTRYPOINT [ "Abricotine" ]
