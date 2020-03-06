# Firefox over VNC

FROM ubuntu:20.04
RUN apt update && \
    apt install -y x11vnc xvfb firefox

RUN mkdir ~/.vnc
RUN x11vnc -storepasswd 1234 ~/.vnc/passwd

RUN bash -c 'echo "firefox && pkill -f x11vnc ;" >> ~/.bashrc'

ENTRYPOINT [ "/usr/bin/env", "x11vnc", "-forever", "-usepw", "-create" ]
