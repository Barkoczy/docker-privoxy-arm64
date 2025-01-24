FROM arm64v8/debian:bookworm-slim

RUN apt-get update && apt-get install -y privoxy

USER privoxy
CMD ["/usr/sbin/privoxy", "--no-daemon", "--user", "privoxy", "/etc/privoxy/config"]