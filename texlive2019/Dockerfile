FROM ubuntu:xenial

RUN apt-get update \
    && apt-get install -y \
    wget \
    perl \
    build-essential

RUN mkdir -p /usr/local/texlive/2019 \
	&& cd /usr/local/texlive/2019 \
	&& wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz \
    && tar xvzf install-tl-unx.tar.gz \
    && rm install-tl-unx.tar.gz \
    && yes i | ./install-tl-2019*/install-tl

ENV PATH /usr/local/texlive/2019/bin/x86_64-linux:$PATH

RUN mkdir /mnt/TexDir