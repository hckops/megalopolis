FROM ubuntu

# https://github.com/tsl0922/ttyd/releases
ARG TTYD_VERSION=1.7.7

ENV TTYD_PORT=7681
ENV TTYD_USERNAME=ubuntu
ENV TTYD_PASSWORD=changeme
ENV TTYD_EXEC=/bin/bash

RUN apt-get update && apt-get -y install \
  curl \
  netcat-traditional \
  socat \
  tini && \
  apt-get clean

RUN curl -sSL "https://github.com/tsl0922/ttyd/releases/download/${TTYD_VERSION}/ttyd.$(uname -p)" -o /usr/local/bin/ttyd && \
  chmod u+x /usr/local/bin/ttyd && \
  ttyd -v

WORKDIR /root

ENTRYPOINT ["tini", "--"]
CMD ttyd --port "${TTYD_PORT}" --credential "${TTYD_USERNAME}:${TTYD_PASSWORD}" ${TTYD_EXEC}
