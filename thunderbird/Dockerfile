FROM debian:buster

RUN apt-get update \
 && apt-get install thunderbird --no-install-recommends -y \
 && rm -rf /var/lib/apt/lists/*

ENV HOME /home/thunderbird
RUN useradd --create-home --home-dir $HOME thunderbird \
 && chown -R thunderbird:thunderbird $HOME

WORKDIR $HOME
USER thunderbird

ENTRYPOINT [ "thunderbird" ]
