FROM arm64v8/debian:bookworm-slim

RUN apt-get update && apt-get install -y privoxy netcat-traditional && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN if ! getent group privoxy > /dev/null; then groupadd -r privoxy; fi && \
    if ! getent passwd privoxy > /dev/null; then useradd -r -g privoxy privoxy; fi

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

RUN mkdir -p /etc/privoxy && \
    chown -R privoxy:privoxy /etc/privoxy

USER privoxy

ENTRYPOINT ["/entrypoint.sh"]