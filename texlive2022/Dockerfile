FROM ubuntu:focal

RUN apt-get update \
    && apt-get install -y \
    wget \
    perl \
    build-essential

RUN mkdir -p /usr/local/texlive/2022 \
	&& cd /usr/local/texlive/2022 \
	&& wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz \
    && zcat install-tl-unx.tar.gz | tar xf - \
    && rm install-tl-unx.tar.gz \
    && cd install-tl-* \
    && perl ./install-tl --no-interaction 

ENV PATH /usr/local/texlive/2022/bin/x86_64-linux:$PATH

RUN mkdir /mnt/TexDir