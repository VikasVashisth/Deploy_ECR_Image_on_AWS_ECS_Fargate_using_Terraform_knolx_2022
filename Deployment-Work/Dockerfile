FROM openjdk:11-jre-slim
COPY /target/springboot-docker-aws-ecs-0.0.1-SNAPSHOT.jar ./demo.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","./demo.jar"]