FROM debian:stretch

RUN apt-get update \
 && apt-get install gnupg2 pass -y --no-install-recommends \
 && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["pass"]

