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
 && curl -L "https://github.com/yakyak/yakyak/releases/download/v1.4.3/yakyak-1.4.3-linux-x64.tar.gz" -o yakyak.tar.gz \
 && tar xzf yakyak.tar.gz \
 && rm yakyak.tar.gz \
 && mv yakyak-linux-x64 /opt/yakyak \
 && rm -rf /var/lib/apt/lists/*

ENV HOME /home/yakyak
RUN useradd --create-home --home-dir $HOME yakyak \
 && chown -R yakyak:yakyak $HOME

WORKDIR $HOME
USER yakyak

ENTRYPOINT [ "/opt/yakyak/yakyak" ]
