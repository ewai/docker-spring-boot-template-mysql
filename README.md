# spring-boot-template-mysql

docker build -t sbtdb .

docker run -d --name sbtdb -p 3306:3306 sbtdb

docker exec -it sbtdb bash
