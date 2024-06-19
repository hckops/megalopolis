## alpine-core

[![Docker Image Version (latest by date)][image-version]][repo-url]
[![Docker Image Size (latest by date)][image-size]][repo-url]

[image-version]: https://img.shields.io/docker/v/hckops/alpine-core?sort=date&style=for-the-badge
[image-size]: https://img.shields.io/docker/image-size/hckops/alpine-core?color=orange&sort=date&style=for-the-badge
[repo-url]: https://hub.docker.com/r/hckops/alpine-core

```bash
# run base container
docker run --rm -it alpine

# build
docker build -t hckops/alpine-core docker/alpine-core

# run
docker run --rm --name alpine-core \
  -p 5900:5900 -p 6080:6080 \
  -it hckops/alpine-core

# exec
docker exec -it alpine-core bash

# vnc
vncviewer localhost:5900

# (mac|linux) novnc
[open|xdg-open] http://localhost:6080
```
