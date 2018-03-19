FROM debian:stretch

RUN apt-get update \
 && apt-get install sieve-connect -y \
 && rm -rf /var/lib/apt/lists/* \
 && mkdir /sieve

WORKDIR /sieve
ENTRYPOINT [ "sieve-connect" ]
