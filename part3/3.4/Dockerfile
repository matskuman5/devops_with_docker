FROM ubuntu:latest

RUN apt-get update && apt-get install -y git docker.io

COPY script.sh /script.sh
RUN chmod +x /script.sh

ENTRYPOINT [ "/script.sh" ]