FROM ubuntu:22.04
MAINTAINER ProhorovAlexey

RUN apt update
RUN sudo apt install apt-utils
RUN apt install -yy gcc g++ cmake

COPY . print/
WORKDIR print

RUN cmake -B_build -DCMAKE_INSTALL_PREFIX=install
RUN cmake --build _build

ENV LOG_PATH /home/logs/log.txt
VOLUME /home/logs
WORKDIR _install/bin
ENTRYPOINT ./print_hello_world
