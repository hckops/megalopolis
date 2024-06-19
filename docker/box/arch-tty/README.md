## hckops/arch-tty

[![Docker Image Version (latest by date)][image-version]][repo-url]
[![Docker Image Size (latest by date)][image-size]][repo-url]

[image-version]: https://img.shields.io/docker/v/hckops/arch-tty?sort=date&style=for-the-badge
[image-size]: https://img.shields.io/docker/image-size/hckops/arch-tty?color=orange&sort=date&style=for-the-badge
[repo-url]: https://hub.docker.com/r/hckops/arch-tty

```bash
# tmp container
docker run --rm --name archlinux -it archlinux

# build: use "--progress=plain --no-cache" to debug console output
docker build -t hckops/arch-tty docker/arch-tty

# run
docker run --rm --name arch-tty -p 7681:7681 -it hckops/arch-tty
```
