# Version: 0.0.1
FROM jenkins:latest
MAINTAINER Willem Ligtenberg "willem.ligtenberg@openanalytics.eu"

USER root
RUN echo deb http://cloud.r-project.org/bin/linux/debian jessie-cran3/ >> /etc/apt/sources.list
RUN apt-key adv --keyserver keys.gnupg.net --recv-key 381BA480

RUN apt-get update && apt-get install -y \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev \
    r-base-core \
    r-base-dev
    
ADD rpackages.R /tmp/rpackages.R
RUN R CMD BATCH /tmp/rpackages.R

USER jenkins