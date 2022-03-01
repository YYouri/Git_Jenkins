FROM java:8
WORKDIR C/ProgramData/Jenkins/.jenkins/workspace/git_jenkins
EXPOSE 8081
ARG JAR_FILE=demo1/build/libs/demo1-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]
