FROM node:19
WORKDIR /app

RUN useradd -rm -d /app -s /bin/bash -g root -G sudo -u 1001 ubuntu
RUN chown -R 1001:1001 /app

USER ubuntu

ENTRYPOINT ["bash", "-c"]
