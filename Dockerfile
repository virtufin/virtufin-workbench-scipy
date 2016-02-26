FROM jupyter/jupyterhub

MAINTAINER Patrick Haener <contact@haenerconsulting.com>

ADD key.pem /srv/jupyterhub
ADD cert.pem /srv/jupyterhub
ADD jupyterhub_cookie_secret /srv/jupyterhub
ADD logo.png /srv/jupyterhub/share/jupyter/hub/static/images

RUN /opt/conda/bin/conda install -y jupyter
RUN /opt/conda/bin/conda install -y scipy
RUN /opt/conda/bin/conda install -y pandas
RUN /opt/conda/bin/conda install -y xlrd
RUN /opt/conda/bin/conda install -y matplotlib
RUN adduser admin
RUN echo admin:admin | chpasswd
RUN adduser guest
RUN echo guest:guest | chpasswd

EXPOSE 443
