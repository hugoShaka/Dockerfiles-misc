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
 && curl -L "https://dl.pstmn.io/download/latest/linux64" -o postman.tar.gz \
 && tar xzf postman.tar.gz \
 && ls

ENTRYPOINT [ "/Postman/Postman" ]
