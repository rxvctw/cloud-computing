FROM  openjdk:alpine

WORKDIR /app

COPY ./build/libs/springdemo-0.0.1-SNAPSHOT.jar /app/app.jar

EXPOSE 8081

ENTRYPOINT ["java", "-jar", "app.jar"]
