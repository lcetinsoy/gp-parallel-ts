FROM ubuntu:16.04

WORKDIR /usr/src/app

COPY . .

RUN apt-get update && \
    apt-get install python-dev python-numpy python-scipy gfortran -y

WORKDIR utils/direct_fortran

RUN bash make_direct.sh

WORKDIR /usr/src/app

CMD python demo_simtime.py

