FROM tomcat:9.0
COPY --from=jenkins-agent /app/boxfuse-sample-java-war-hello/target/hello-1.0.war /usr/local/tomcat/webapps
