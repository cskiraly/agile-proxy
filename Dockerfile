ARG BASEIMAGE_BUILD=resin/raspberry-pi3-node:7.8.0-20170426

FROM $BASEIMAGE_BUILD

RUN wget -qO- https://getcaddy.com | bash

# Defines our working directory in container
WORKDIR /home

COPY Caddyfile Caddyfile

EXPOSE 80

CMD caddy -log stdout
