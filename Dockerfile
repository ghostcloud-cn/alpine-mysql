FROM registry.docker-cn.com/library/alpine:latest

WORKDIR /app
VOLUME /app

RUN echo "http://mirrors.aliyun.com/alpine/latest-stable/main/" > /etc/apk/repositories \
	&& apk add --update mysql mysql-client \
	&& rm -f /var/cache/apk/*

COPY startup.sh /startup.sh
COPY my.cnf /etc/mysql/my.cnf

EXPOSE 3306
CMD ["/startup.sh"]
