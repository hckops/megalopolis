#!/bin/bash

# sets VNC password at runtime
mkdir -pv ${HOME}/.vnc/
x11vnc -storepasswd ${PASSWORD} ${HOME}/.vnc/passwd
chmod 600 ${HOME}/.vnc/passwd

# starts VNC
exec /usr/bin/x11vnc \
  -display ${DISPLAY} \
  -rfbauth ${HOME}/.vnc/passwd \
  -forever \
  -shared
