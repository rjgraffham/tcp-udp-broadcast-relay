FROM docker.io/library/alpine:latest@sha256:f59abe656b692d901e184be3445e084786602108599d2a51d229c0f5a48c71bf

LABEL org.opencontainers.image.source=https://github.com/rjgraffham/tcp-udp-broadcast-relay
LABEL org.opencontainers.image.description="container for rebroadcasting inbound TCP4 traffic as UDP4 broadcast"
LABEL org.opencontainers.image.licenses=MIT

RUN apk update && apk add socat

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT /entrypoint.sh
