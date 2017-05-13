# alpine-mysql
a docker image base on alpine with mysql

# build image
```
docker build -t hub.ghostcloud.cn/mysql:alpine .
docker run -it --rm -v $(pwd):/app -p 3306:3306 hub.ghostcloud.cn/mysql:alpine
```

# Usage
```
docker run -it --name mysql -p 3306:3306 -v $(pwd):/app -e MYSQL_DATABASE=admin -e MYSQL_USER=test -e MYSQL_PASSWORD=test123 -e MYSQL_ROOT_PASSWORD=111111 hub.ghostcloud.cn/mysql:alpine
```

It will create a new db, and set mysql root password(default is 111111)