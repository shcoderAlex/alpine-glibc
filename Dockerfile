FROM alpine:latest

MAINTAINER shcoder.alex@gmail.com

RUN apk --no-cache add ca-certificates && \
	wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://raw.githubusercontent.com/sgerrand/alpine-pkg-glibc/master/sgerrand.rsa.pub && \
	wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.23-r3/glibc-2.23-r3.apk && \
	apk add glibc-2.23-r3.apk
