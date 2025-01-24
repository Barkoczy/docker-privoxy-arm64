#!/bin/sh

# Generovanie konfiguračného súboru
cat <<EOF > /etc/privoxy/config
listen-address  0.0.0.0:8118
forward .   .
forward-socks5t .onion  tor:9050    .
EOF

# Spustenie privoxy
exec /usr/sbin/privoxy --no-daemon /etc/privoxy/config