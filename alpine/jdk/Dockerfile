FROM   frolvlad/alpine-oraclejdk8:slim

MAINTAINER  zzh@hw.com

ENV TZ=Asia/Shanghai

RUN apk add --update tzdata && \
    ln -sf /usr/share/zoneinfo/$TZ  /etc/localtime && \
    echo $TZ > /etc/timezone  && \
    rm -rf /var/cache/apk/*

RUN apk --no-cache  add --update curl bash 


EXPOSE 8080

