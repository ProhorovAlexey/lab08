FROM ubuntu:22.04
MAINTAINER ProhorovAlexey

RUN apt update
RUN apt install -yy gcc g++ cmake

COPY . print/
WORKDIR print

RUN cmake -B_build -DCMAKE_INSTALL_PREFIX=install
RUN cmake --build _build
RUN cmake --build _build --target install

WORKDIR install/bin
ENTRYPOINT ./hello_world
