FROM ubuntu:21.04

RUN apt-get update && apt-get install -y wget perl-tk && rm -rf /var/lib/apt/lists/*

#Get TL from CTAN
RUN cd /tmp &&\
  wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz &&\
  tar -xzf install-tl-unx.tar.gz

COPY texlive.profile /tmp/

RUN $(find /tmp -maxdepth 1 -type d -name 'install-tl*')/install-tl -profile /tmp/texlive.profile

CMD ["/bin/bash"]
