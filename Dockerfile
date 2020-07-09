FROM golang:1.8-alpine
ADD . /go/src/hello-app
RUN apk add --update --no-cache git
RUN go get math/bits && \
    go get github.com/cespare/xxhash/v2 && \
    go get github.com/prometheus/client_golang/prometheus && \
    go get github.com/prometheus/client_golang/prometheus/promauto && \
    go get github.com/prometheus/client_golang/prometheus/promhttp && \
    go install hello-app

FROM alpine:latest
COPY --from=0 /go/bin/hello-app .
ENV PORT 8080
ARG TAG
RUN env
RUN echo $TAG
ENV VERSION=$TAG
CMD ["./hello-app"]
