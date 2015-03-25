FROM        python:2.7
MAINTAINER  john.jansen@me.com
RUN         apt-get -y update && apt-get -y upgrade
RUN         apt-get -y install python-numpy python-scipy python-sklearn libatlas-dev libatlas3gf-base openjdk-7-jdk
RUN         apt-get -y install haskell-platform
RUN         apt-get -y install pandoc
RUN         mkdir -p /usr/src/app
WORKDIR     /usr/src/app
COPY        requirements.txt /usr/src/app/

RUN         curl -O http://chianti.ucsd.edu/cytoscape-3.2.1/Cytoscape_3_2_1_unix.sh
RUN         /bin/bash Cytoscape_3_2_1_unix.sh -q
RUN         pip install -r requirements.txt
