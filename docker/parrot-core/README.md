## parrot-core

[![Docker Image Version (latest by date)][image-version]][repo-url]
[![Docker Image Size (latest by date)][image-size]][repo-url]

[image-version]: https://img.shields.io/docker/v/hckops/parrot-core?sort=date&style=for-the-badge
[image-size]: https://img.shields.io/docker/image-size/hckops/parrot-core?color=orange&sort=date&style=for-the-badge
[repo-url]: https://hub.docker.com/r/hckops/parrot-core

* [Parrot Security OS](https://parrotsec.org)

```bash
# run container
docker run --rm -it parrotsec/core

# build
docker build -t hckops/parrot-core docker/parrot-core

# run
docker run --rm --name parrot-core \
  -p 5900:5900 -p 6080:6080 -p 7681:7681 \
  -e PASSWORD=parrot \
  -it hckops/parrot-core

# run with vpn (autostart is disabled)
docker run --rm --name parrot-core \
  -p 5900:5900 -p 6080:6080 -p 7681:7681 \
  -e PASSWORD=parrot \
  -e OPENVPN_CONFIG="/usr/share/openvpn/htb_eu_vip.ovpn" \
  -v "${PWD}/data:/usr/share/openvpn" \
  --cap-add=NET_ADMIN \
  --device=/dev/net/tun \
  --sysctl net.ipv6.conf.all.disable_ipv6=0 \
  -it hckops/parrot-core

# exec
docker exec -it parrot-core bash

# verify connection
supervisorctl status
supervisorctl tail openvpn

# vnc
vncviewer localhost:5900

# (mac|linux) novnc
[open|xdg-open] http://localhost:6080

# (mac|linux) tty
[open|xdg-open] http://localhost:7681
```
