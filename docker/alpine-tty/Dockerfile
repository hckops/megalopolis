FROM alpine

# https://github.com/tsl0922/ttyd/releases
ARG TTYD_VERSION=1.7.3

ENV TTYD_PORT=7681
ENV TTYD_USERNAME=alpine
ENV TTYD_PASSWORD=changeme
ENV TTYD_EXEC=/bin/bash

RUN apk upgrade --update && apk add --no-cache \
  curl \
  bash \
  netcat-openbsd \
  socat \
  tini

RUN curl -sSL "https://github.com/tsl0922/ttyd/releases/download/${TTYD_VERSION}/ttyd.x86_64" -o /usr/local/bin/ttyd && \
  chmod u+x /usr/local/bin/ttyd && \
  ttyd -v

WORKDIR /root

ENTRYPOINT ["/sbin/tini", "--"]
CMD ttyd --port "${TTYD_PORT}" --credential "${TTYD_USERNAME}:${TTYD_PASSWORD}" ${TTYD_EXEC}
