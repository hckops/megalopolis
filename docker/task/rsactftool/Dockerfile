# use 3.11 until this issue is resolved https://github.com/aleaxit/gmpy/issues/446
FROM python:3.11-slim

# see https://github.com/RsaCtfTool/RsaCtfTool/blob/master/.github/workflows/test.yml
RUN apt-get update && apt-get -y install \
  git \
  libgmp3-dev \
  libmpc-dev \
  sagemath && \
  apt-get clean

RUN git clone https://github.com/RsaCtfTool/RsaCtfTool.git /opt/rsactftool && \
  pip install -r "/opt/rsactftool/requirements.txt"

ENTRYPOINT ["/opt/rsactftool/RsaCtfTool.py"]
