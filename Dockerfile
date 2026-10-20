FROM docker.io/library/alpine:latest@sha256:294b683cb724975bec92580e1e685676bd4b50bda910ddb8c51d4cabeaec77e6

LABEL org.opencontainers.image.source=https://github.com/rjgraffham/tcp-udp-broadcast-relay
LABEL org.opencontainers.image.description="container for rebroadcasting inbound TCP4 traffic as UDP4 broadcast"
LABEL org.opencontainers.image.licenses=MIT

RUN apk update && apk add socat

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT /entrypoint.sh
