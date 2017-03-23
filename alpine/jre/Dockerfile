FROM frolvlad/alpine

MAINTAINER zzh@hw.com

#install curl

RUN apk add --update curl ca-certificates tar && \
        curl -Ls https://circle-artifacts.com/gh/andyshinn/alpine-pkg-glibc/6/artifacts/0/home/ubuntu/alpine-pkg-glibc/packages/x86_64/glibc-2.21-r2.apk > /tmp/glibc-2.21-r2.apk && \
        apk add --allow-untrusted /tmp/glibc-2.21-r2.apk

#java version
        ENV JAVA_VERSION_MAJOR 8
        ENV JAVA_VERSION_MINOR 74
        ENV JAVA_VERSION_BUILD 02
        ENV JAVA_PACKAGE       server-jre

# Download and unarchive Java
        RUN mkdir /opt && curl -jksSLH "Cookie: oraclelicense=accept-securebackup-cookie"\
            http://download.oracle.com/otn-pub/java/jdk/${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-b${JAVA_VERSION_BUILD}/${JAVA_PACKAGE}-${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-linux-x64.tar.gz \
            | tar -xzf - -C /opt \
            && ln -s /opt/jdk1.${JAVA_VERSION_MAJOR}.0_${JAVA_VERSION_MINOR} /opt/jdk \
            && rm -rf /opt/jdk/*src.zip

# Set environment
ENV JAVA_HOME /opt/jdk
ENV PATH ${PATH}:${JAVA_HOME}/bin
