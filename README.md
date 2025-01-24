# Privoxy ARM64 Docker Image

Docker image for Privoxy proxy server optimized for ARM64 architecture.

## Usage

```bash
docker pull quickbiteschronicles/privoxy-arm64:latest
docker run -p 8118:8118 quickbiteschronicles/privoxy-arm64:latest
```

## Docker Compose Example

```yaml
services:
  privoxy:
    image: quickbiteschronicles/privoxy-arm64:latest
    volumes:
      - privoxy_config:/etc/privoxy/config:ro
    ports:
      - "8118:8118"
    deploy:
      resources:
        limits:
          memory: 256M
        reservations:
          memory: 128M
```

## Build

```bash
docker buildx build --platform linux/arm64 -t quickbiteschronicles/privoxy-arm64:latest --push .
```

## License
Based on official Privoxy package. [GPL-2.0 License](https://www.privoxy.org/user-manual/copyright.html)