FROM ubuntu:20.04 AS builder

RUN mkdir -p /opt/gminer && \
    apt update && apt install unzip wget -y

RUN wget https://github.com/develsoftware/GMinerRelease/releases/download/2.44/gminer_2_44_linux64.zip && \
    unzip gminer_2_44_linux64.zip -d /tmp/gminer


FROM nvidia/cuda:10.2-base

LABEL maintainer="Dockminer"

ENV PATH="/opt/gminer:${PATH}:/usr/local/nvidia/lib:/usr/local/nvidia/lib64"

COPY --from=builder /tmp/gminer /opt/gminer

EXPOSE 8080

ENTRYPOINT [ "miner" ]