FROM debian:stretch

RUN apt-get update \
 && apt-get install quassel-client --no-install-recommends -y \
 && rm -rf /var/lib/apt/lists/*

ENV HOME /home/quassel-client
RUN useradd --create-home --home-dir $HOME quassel-client \
 && chown -R quassel-client:quassel-client $HOME

WORKDIR $HOME
USER quassel-client

ENTRYPOINT [ "quasselclient" ]
