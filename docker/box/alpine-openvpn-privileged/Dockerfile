FROM alpine

ENV OPENVPN_CONFIG "/usr/share/openvpn/client.ovpn"

RUN apk upgrade --update && apk add --no-cache \
  curl \
  bash \
  tini \
  openvpn

WORKDIR /root

ENTRYPOINT ["/sbin/tini", "--"]
CMD /usr/sbin/openvpn "${OPENVPN_CONFIG}"
