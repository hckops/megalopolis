# use 3.11 until the issue is resolved https://github.com/aleaxit/gmpy/issues/446
FROM python:3.11-alpine

RUN apk add --no-cache \
  git \
  gcc \
  g++ \
  make \
  musl-dev \
  linux-headers \
  gmp-dev \
  mpfr-dev \
  mpc1-dev

RUN git clone https://github.com/RsaCtfTool/RsaCtfTool.git /opt/rsactftool && \
  pip install -r "/opt/rsactftool/requirements.txt"

ENTRYPOINT ["/opt/rsactftool/RsaCtfTool.py"]
