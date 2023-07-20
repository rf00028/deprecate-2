FROM openjdk:11.0.15-jdk-buster

ARG JAR_FILE
ADD $JAR_FILE target/app.jar
ENV JAVA_OPTS=""

EXPOSE 8082

ENTRYPOINT ["java", "-jar","target/app.jar"]