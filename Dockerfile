FROM openjdk:8-jdk-alpine
LABEL maintainer="los2ve7@gmail.com"
VOLUME /main-app
ADD build/libs/book-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-Dspring.datasource.url=jdbc:mysql//192.168.0.102:3306/root?useSSL=false&amp;serverTimezone=UTC&amp;useUnicode=true&amp;characterEncoding=utf8","-jar","app.jar"]