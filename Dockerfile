FROM debian:trixie-slim

RUN apt update && \
    apt upgrade && \
    apt install --no-install-recommends --yes git

WORKDIR /workspace
