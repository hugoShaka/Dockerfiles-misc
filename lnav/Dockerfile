FROM debian:stretch

RUN apt-get update \
 && apt-get install curl ca-certificates --no-install-recommends -y \
 && curl -L "https://github.com/tstack/lnav/releases/download/v0.8.3/lnav_0.8.3_amd64.deb" -o lnav.deb \
 && mkdir /logs \
 && dpkg -i lnav.deb \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /logs

ENTRYPOINT [ "lnav", "." ]
