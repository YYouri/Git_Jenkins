FROM java:8
EXPOSE 8081
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} demo1-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar", "/demo1-0.0.1-SNAPSHOT.jar"]
