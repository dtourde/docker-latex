FROM ubuntu:21.04

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Paris

RUN apt-get update && apt-get upgrade -y && apt-get install -y texlive-full && rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]
