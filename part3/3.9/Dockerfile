FROM golang:1.16-alpine AS build-stage

WORKDIR /usr/src/app

COPY . .

RUN CGO_ENABLED=0 go build -a -o ./goapp

FROM scratch

EXPOSE 8080

COPY --from=build-stage /usr/src/app/goapp /goapp

CMD [ "/goapp" ]