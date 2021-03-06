FROM java:8
WORKDIR C:/docker_work/git_jenkins
EXPOSE 8081
ARG JAR_FILE=demo1/build/libs/demo1-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} ./app/
ENTRYPOINT ["java", "-jar", "./app/demo1-0.0.1-SNAPSHOT.jar"]
