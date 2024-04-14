FROM debian:bookworm-slim

ENV DEBIAN_FRONTEND=noninteractive
RUN  apt-get update && \
        apt-get install --no-install-recommends -y \
        certbot \
        docker.io && \
        rm -rf /var/lib/apt/lists/*
COPY deploy-hook /deploy-hook
RUN chmod +x /deploy-hook
