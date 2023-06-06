FROM golang:1.16

EXPOSE 8080

WORKDIR /usr/src/app

COPY . .

RUN go build -o goapp \
&& rm -rf cache \
&& rm -rf common \
&& rm -rf controller \
&& rm -rf pgconnection \
&& rm -rf router \
&& useradd appuser

USER appuser

CMD ./goapp