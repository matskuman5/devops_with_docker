FROM ubuntu:20.04

WORKDIR /usr/src/app

COPY script.sh .

RUN apt-get update

RUN echo 'y' | apt-get install curl

CMD ./script.sh