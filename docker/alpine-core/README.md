## alpine-core

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
