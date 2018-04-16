FROM debian:stretch

RUN apt-get update \
 && apt-get install graphviz -y --no-install-recommends \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /graph

ENTRYPOINT [ "dot" ]
