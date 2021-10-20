FROM ubuntu:21.04

RUN apt-get update && apt-get install -y texlive-full && rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]
