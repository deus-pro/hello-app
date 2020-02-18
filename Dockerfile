FROM golang:1.8-alpine
ADD . /go/src/hello-app
RUN go install hello-app

FROM alpine:latest
COPY --from=0 /go/bin/hello-app .
ENV PORT 8080
RUN env
RUN echo $DOCKER_TAG
ENV VERSION $DOCKER_TAG
CMD ["./hello-app"]
