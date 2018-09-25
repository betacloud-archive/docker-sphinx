FROM ubuntu:18.04
LABEL maintainer="Betacloud Solutions GmbH (https://www.betacloud-solutions.de)"

ENV DEBIAN_FRONTEND noninteractive
ENV VERSION ${VERSION:-latest}

ENV CONFPATH ${CONFPATH:-/source}
ENV DOCUMENT ${DOCUMENT:-index}
ENV TYPE ${TYPE:-html}

COPY files/betacloud.png /betacloud.png
COPY files/preamble.tex /preamble.tex
COPY files/conf.py /conf.py
COPY files/run.sh /run.sh

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get clean \
    && apt-get install -y texlive-latex-recommended texlive-latex-extra texlive-fonts-recommended  make python-pip \
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
