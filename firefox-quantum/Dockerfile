FROM debian:stretch

RUN apt-get update && apt-get install -y \
        ca-certificates \
        hicolor-icon-theme \
        libasound2 \
        libgl1-mesa-dri \
        libgl1-mesa-glx \
        libgtk-3-0 \
        libdbus-glib-1-2 \
        libxt-dev \
        tar \
        wget \
        bzip2 \
        fonts-dejavu-extra \
        --no-install-recommends \
 && rm -rf /var/lib/apt/lists/*

RUN cd opt \
 && wget -O /opt/firefox.tar.bz2 "https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux64&lang=en-US" \
 && tar -jxvf firefox.tar.bz2

ENTRYPOINT [ "/opt/firefox/firefox" ]
