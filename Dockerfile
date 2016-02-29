FROM jupyter/jupyterhub

MAINTAINER Patrick Haener <contact@haenerconsulting.com>

COPY ssl /srv/jupyterhub/ssl
COPY share /srv/jupyterhub/share

RUN \
  /opt/conda/bin/conda install -y jupyter && \
  /opt/conda/bin/conda install -y scipy && \
  /opt/conda/bin/conda install -y pandas && \
  /opt/conda/bin/conda install -y xlrd && \
  /opt/conda/bin/conda install -y matplotlib 
RUN adduser admin
RUN echo admin:admin | chpasswd
RUN adduser guest
RUN echo guest:guest | chpasswd

EXPOSE 443
