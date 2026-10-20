# TCP4 to UDP4 Broadcast Relay

Broadcasts incoming TCP4 traffic on port `$RELAY_LISTEN_PORT` (if
not provided, listens on a random port in range 42000-42999) as
UDP4 broadcast.

Created to allow Wake-on-LAN from within containers without allowing
those containers full access to the host's network interfaces (by
limiting that access to the container running only this script).
