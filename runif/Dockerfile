FROM rocker/hadleyverse

MAINTAINER "Tengfei Yin" yintengfei@gmail.com

ADD https://raw.githubusercontent.com/tengfei/docker/master/runif/src/runif.R /usr/local/bin/
RUN mkdir /report/
ADD https://raw.githubusercontent.com/tengfei/docker/master/runif/report/report.Rmd /report/

RUN chown root:staff /usr/local/bin/runif.R \
    && chmod 777 /usr/local/bin/runif.R

