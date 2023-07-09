FROM ubuntu:jammy

ENV DEBIAN_FRONTEND=noninteractive 

RUN apt update && apt install -y \
    kiwix-tools

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +rwx /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]