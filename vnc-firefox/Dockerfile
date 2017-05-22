# Firefox over VNC

FROM ubuntu:16.04
RUN apt update && \
    apt install -y x11vnc xvfb firefox

RUN mkdir ~/.vnc
RUN x11vnc -storepasswd 1234 ~/.vnc/passwd

RUN bash -c 'echo "firefox" >> ~/.bashrc'

CMD [ '/usr/bin/env', 'x11vnc', '-forever', '-usepw', '-create' ]
