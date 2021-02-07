FROM ubuntu:20.04 AS builder

RUN apt update && apt install unzip wget -y

RUN wget https://github.com/develsoftware/GMinerRelease/releases/download/2.44/gminer_2_44_linux64.zip && \
    unzip gminer_2_44_linux64.zip -d /tmp/gminer


FROM nvidia/cuda:10.2-base

LABEL maintainer="Dockminer"

LABEL org.opencontainers.image.source https://github.com/dockminer/gminer

# Fix Driver bug
RUN ln -s /usr/lib/x86_64-linux-gnu/libnvidia-ml.so.1 /usr/lib/x86_64-linux-gnu/libnvidia-ml.so

COPY --from=builder /tmp/gminer/miner /usr/local/bin/miner

EXPOSE 8080

ENTRYPOINT [ "miner" ]