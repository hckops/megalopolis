FROM parrotsec/core

ENV DISPLAY :0
# 1024x768x24
ENV RESOLUTION 1920x1080x24

ENV VNC_PORT 5900
ENV NOVNC_PORT 6080
ENV TTY_PORT 7681

ENV USERNAME="parrot"
ENV PASSWORD="changeme"

ENV OPENVPN_CONFIG="/usr/share/openvpn/client.ovpn"

RUN apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get -y install \
    dbus-x11 \
    xfce4 \
    xvfb \
    x11vnc \
    ttyd \
    openvpn && \
    apt-get clean

# installs noVNC
RUN apt-get -y install git && \
  git clone --depth 1 https://github.com/novnc/noVNC.git /usr/share/novnc && \
  git clone --depth 1 https://github.com/novnc/websockify.git /usr/share/novnc/utils/websockify && \
  ln -s /usr/share/novnc/vnc_lite.html /usr/share/novnc/index.html

SHELL ["/bin/bash", "-c"]

# setup supervisor
COPY supervisor /tmp
RUN apt-get update && apt-get -y install supervisor && \
  echo_supervisord_conf > /etc/supervisord.conf && \
  sed -i -r -f /tmp/supervisor.sed /etc/supervisord.conf && \
  mkdir -pv /etc/supervisor/conf.d /var/log/{novnc,openvpn,ttyd,x11vnc,xfce4,xvfb} /usr/share/supervisor && \
  mv /tmp/supervisor-*.ini /etc/supervisor/conf.d/ && \
  mv /tmp/scripts/*.sh /usr/share/supervisor/ && \
  chmod u+x /usr/share/supervisor/*.sh && \
  rm -fr /tmp/supervisor*

# removes existing entrypoint
ENTRYPOINT []
CMD ["supervisord", "-c", "/etc/supervisord.conf", "-n"]
