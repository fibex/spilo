FROM ghcr.io/zalando/spilo-17:4.0-p2

RUN apt-get update \
 && apt-get --reinstall install locales pg-activity \
 && sed -r -i 's/# ru_RU.UTF-8 UTF-8/ru_RU.UTF-8 UTF-8/g' /etc/locale.gen \
 && sed -r -i 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/g' /etc/locale.gen \
 && locale-gen \
 && rm -fr /var/lib/apt/lists/* \
 && rm -fr /var/cache/debconf/*
