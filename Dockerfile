FROM ruby:2.6-slim

WORKDIR /srv/slate

VOLUME /srv/slate/source
EXPOSE 4567

COPY . /srv/slate

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        build-essential \
        nodejs \
        git-all \
    && gem install bundler \
