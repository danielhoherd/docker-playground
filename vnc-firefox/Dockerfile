# Firefox over VNC

FROM ubuntu:bionic
RUN DEBIAN_FRONTEND=noninteractive \
    apt-get update && \
    apt-get install -y --no-install-recommends x11vnc xvfb firefox && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir ~/.vnc
RUN x11vnc -storepasswd 1234 ~/.vnc/passwd

RUN /bin/echo "/usr/bin/firefox" >> ~/.xinitrc
ENV DISPLAY=:20

CMD bash -c '/usr/bin/env x11vnc -forever -usepw -create -o /var/log/x11vnc.log'
