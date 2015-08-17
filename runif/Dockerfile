FROM rocker/r-base

MAINTAINER "Tengfei Yin" yintengfei@gmail.com

ADD https://raw.githubusercontent.com/tengfei/docker/master/runif/src/runif.R /usr/local/bin/

RUN chown root:staff /usr/local/bin/runif.R \
    && chmod 777 /usr/local/bin/runif.R

