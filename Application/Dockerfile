FROM openjdk:8-jdk-alpine

WORKDIR /app

COPY pom.xml .
COPY src ./src

RUN apk add --no-cache curl maven && \
    mvn clean package -DskipTests && \
    mv target/*.jar app.jar && \
    rm -rf /root/.m2 && \
    apk del maven

EXPOSE 8080

CMD ["java", "-jar", "app.jar"]