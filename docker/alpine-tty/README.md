## alpine-tty

[![Docker Image Version (latest by date)][image-version]][repo-url]
[![Docker Image Size (latest by date)][image-size]][repo-url]

[image-version]: https://img.shields.io/docker/v/hckops/alpine-tty?sort=date&style=for-the-badge
[image-size]: https://img.shields.io/docker/image-size/hckops/alpine-tty?color=orange&sort=date&style=for-the-badge
[repo-url]: https://hub.docker.com/r/hckops/alpine-tty

```bash
# build
docker build -t hckops/alpine-tty docker/alpine-tty

# run
docker run --rm --name alpine-tty -p 7681:7681 -it hckops/alpine-tty
```
