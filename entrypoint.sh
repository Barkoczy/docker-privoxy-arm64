#!/bin/sh
cat <<EOF > /etc/privoxy/config
listen-address 0.0.0.0:8118
forward-socks5 / mastodon_tor:9050 .
toggle 0
enable-remote-toggle 0
enable-remote-http-toggle 0
accept-intercepted-requests 0
EOF
exec /usr/sbin/privoxy --no-daemon /etc/privoxy/config