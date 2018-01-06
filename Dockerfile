FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
    wget \
    libopencv-dev \
    gnuplot && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /fddb

ADD evaluation/ evaluation/

RUN cd evaluation && make

ENTRYPOINT /fddb/evaluation/runEvaluate.pl