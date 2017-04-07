FROM   frolvlad/alpine-oraclejdk8:slim

MAINTAINER  zzh@hw.com

ENV TZ=Asia/Shanghai

RUN apk add --update tzdata && \
    ln -sf /usr/share/zoneinfo/$TZ  /etc/localtime && \
    echo $TZ > /etc/timezone  && \
    rm -rf /var/cache/apk/*

RUN addgroup -S universe \
    && adduser -D -S  -h /home/pc -s /bin/sh  -G universe pc \
	&& apk add --no-cache --update libstdc++
USER pc
WORKDIR /home/pc
	
RUN apk --no-cache  add --update curl bash 


EXPOSE 8080

