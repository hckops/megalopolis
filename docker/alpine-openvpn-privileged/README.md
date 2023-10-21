## hckops/alpine-openvpn-privileged

[![Docker Image Version (latest by date)][image-version]][repo-url]
[![Docker Image Size (latest by date)][image-size]][repo-url]

[image-version]: https://img.shields.io/docker/v/hckops/alpine-openvpn-privileged?sort=date&style=for-the-badge
[image-size]: https://img.shields.io/docker/image-size/hckops/alpine-openvpn-privileged?color=orange&sort=date&style=for-the-badge
[repo-url]: https://hub.docker.com/r/hckops/alpine-openvpn-privileged

```bash
# build
docker build -t hckops/alpine-openvpn-privileged docker/alpine-openvpn-privileged

# run
docker run --rm --name alpine-openvpn-privileged \
  -e OPENVPN_CONFIG="/usr/share/openvpn/client.ovpn" \
  -v "${PWD}/data:/usr/share/openvpn" \
  --cap-add=NET_ADMIN \
  --device=/dev/net/tun \
  --sysctl net.ipv6.conf.all.disable_ipv6=0 \
  -it hckops/alpine-openvpn-privileged

# exec
docker exec -it alpine-openvpn-privileged bash
```
