FROM openjdk:17-jdk-slim
VOLUME /tmp
ADD target/spring-petclinic-3.2.0-SNAPSHOT.jar app.jar
EXPOSE 80
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]


