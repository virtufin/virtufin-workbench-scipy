FROM jupyter/jupyterhub

MAINTAINER Patrick Haener <contact@haenerconsulting.com>

COPY ssl /srv/jupyterhub/ssl
COPY share /opt/conda/share

RUN \
  /opt/conda/bin/conda install -y jupyter && \
  /opt/conda/bin/conda install -y scipy && \
  /opt/conda/bin/conda install -y pandas && \
  /opt/conda/bin/conda install -y xlrd && \
  /opt/conda/bin/conda install -y matplotlib && \
  /opt/conda/bin/conda install -y kafka-python && \
  /opt/conda/bin/conda install -y avro
 
RUN adduser admin && echo admin:admin | chpasswd
RUN adduser guest && echo guest:guest | chpasswd

EXPOSE 443
