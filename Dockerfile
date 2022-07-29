FROM maven:3.8.6-openjdk-11 as maven_build
WORKDIR /app
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN mvn -f /app/boxfuse-sample-java-war-hello/pom.xml package

FROM tomcat:9.0
COPY --from=maven_build /app/boxfuse-sample-java-war-hello/target/hello-1.0.war /usr/local/tomcat/webapps





