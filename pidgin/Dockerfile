FROM debian:stretch

RUN apt-get update \
 && apt-get install pidgin --no-install-recommends -y \
 && rm -rf /var/lib/apt/lists/*

ENV HOME /home/pidgin
RUN useradd --create-home --home-dir $HOME pidgin \
 && chown -R pidgin:pidgin $HOME

WORKDIR $HOME
USER pidgin

ENTRYPOINT [ "pidgin" ]
