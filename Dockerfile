FROM alpine:latest
MAINTAINER ghostcloud <info@ghostcloud.cn>

WORKDIR /app
VOLUME /app
COPY startup.sh /startup.sh

RUN echo "http://mirrors.aliyun.com/alpine/latest-stable/main/" > /etc/apk/repositories \
	&& apk add --update mysql mysql-client \
	&& rm -f /var/cache/apk/*
COPY my.cnf /etc/mysql/my.cnf

EXPOSE 3306
CMD ["/startup.sh"]
