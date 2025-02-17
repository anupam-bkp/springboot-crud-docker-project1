FROM eclipse-temurin:21-alpine
RUN mkdir /opt/app
COPY target/springboot-crud-docker-project1-0.0.1-SNAPSHOT.jar /opt/app
CMD ["java", "-jar", "/opt/app/springboot-crud-docker-project1-0.0.1-SNAPSHOT.jar"]