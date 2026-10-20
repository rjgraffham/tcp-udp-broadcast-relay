#!/bin/sh

# Use passed in port, otherwise pick random port 42000-42999
PORT=${RELAY_LISTEN_PORT:-$(((RANDOM % 1000) + 42000))}

echo "Listening on port $PORT..."
socat TCP4-LISTEN:$PORT,reuseaddr,fork UDP4-DATAGRAM:255.255.255.255:9,broadcast
