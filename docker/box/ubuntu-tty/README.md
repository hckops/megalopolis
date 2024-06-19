## hckops/ubuntu-tty

[![Docker Image Version (latest by date)][image-version]][repo-url]
[![Docker Image Size (latest by date)][image-size]][repo-url]

[image-version]: https://img.shields.io/docker/v/hckops/ubuntu-tty?sort=date&style=for-the-badge
[image-size]: https://img.shields.io/docker/image-size/hckops/ubuntu-tty?color=orange&sort=date&style=for-the-badge
[repo-url]: https://hub.docker.com/r/hckops/ubuntu-tty

```bash
# tmp container
docker run --rm --name ubuntu-lts -it ubuntu:22.04

# build
docker build -t hckops/ubuntu-tty docker/ubuntu-tty

# run
docker run --rm --name ubuntu-tty -p 7681:7681 -it hckops/ubuntu-tty
```
