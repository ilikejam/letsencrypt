FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive 
RUN apt-get update && \
    apt-get update && \
    apt-get install -y certbot docker.io
COPY deploy-hook /deploy-hook
RUN chmod +x /deploy-hook
