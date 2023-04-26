## alpine-openvpn

[![Docker Image Version (latest by date)][image-version]][repo-url]
[![Docker Image Size (latest by date)][image-size]][repo-url]

[image-version]: https://img.shields.io/docker/v/hckops/alpine-openvpn?sort=date&style=for-the-badge
[image-size]: https://img.shields.io/docker/image-size/hckops/alpine-openvpn?color=orange&sort=date&style=for-the-badge
[repo-url]: https://hub.docker.com/r/hckops/alpine-openvpn

```bash
# build
docker build -t hckops/alpine-openvpn docker/alpine-openvpn

# run
docker run --rm --name alpine-openvpn \
  -e OPENVPN_CONFIG="/usr/share/openvpn/client.ovpn" \
  -v "${PWD}/data:/usr/share/openvpn" \
  --cap-add=NET_ADMIN \
  --device=/dev/net/tun \
  --sysctl net.ipv6.conf.all.disable_ipv6=0 \
  -it hckops/alpine-openvpn

# exec
docker exec -it alpine-openvpn bash
```
