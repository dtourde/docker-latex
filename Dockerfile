FROM ubuntu:21.04

RUN apt-get update && apt-get install -y wget perl-tk

#Get TL from CTAN
RUN cd /tmp &&\
  wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz &&\
  tar -xzf install-tl-unx.tar.gz &&\
  cd $(find . -maxdepth 1 -type d -name 'install-tl*')

COPY texlive.profile .

RUN ./install-tl -profile texlive.profile
