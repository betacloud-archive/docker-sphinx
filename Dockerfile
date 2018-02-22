FROM ubuntu:16.04
LABEL maintainer="Betacloud Solutions GmbH (https://www.betacloud-solutions.de)"

ENV DEBIAN_FRONTEND noninteractive
ENV VERSION ${VERSION:-latest}

COPY files/conf.py /conf.py
COPY files/run.sh /run.sh

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get clean \
    && apt-get install -y texlive-full make python-pip \
    && pip install --upgrade pip \
    && pip install \
      Flask-Sphinx-Themes \
      sphinx \
      sphinxcontrib-blockdiag \
      sphinxcontrib-nwdiag \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

VOLUME /html
VOLUME /latex
VOLUME /pdf
VOLUME /source

WORKDIR /source

ENTRYPOINT ["/run.sh"]
