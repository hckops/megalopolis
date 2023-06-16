FROM archlinux

ENV TTYD_PORT=7681
ENV TTYD_USERNAME=arch
ENV TTYD_PASSWORD=changeme
ENV TTYD_EXEC=/bin/fish

RUN pacman -Syu --noconfirm

RUN pacman -S --noconfirm \
  sudo \
  fish \
  ttyd

RUN useradd -ms /bin/fish arch && \
  usermod -aG wheel arch && \
  echo '%wheel ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER arch
WORKDIR /home/arch

RUN sudo pacman -S --noconfirm \
  git \
  binutils \
  make \
  gcc \
  pkg-config \
  fakeroot && \
  git clone --depth 1 https://aur.archlinux.org/tini.git /tmp/tini && \
  cd /tmp/tini && \
  makepkg -si --noconfirm && \
  cd && rm -frv /tmp/tini

ENTRYPOINT ["/sbin/tini", "--"]
CMD ttyd --port "${TTYD_PORT}" --credential "${TTYD_USERNAME}:${TTYD_PASSWORD}" ${TTYD_EXEC}
