FROM maven:3.8.6-openjdk-11 as maven_build
WORKDIR /app
RUN git clone https://github.com/aps2110/lesson10.git
RUN mvn -f /app/lesson10/pom.xml package

FROM tomcat:9.0
COPY --from=maven_build /app/lesson10/target/hello-1.0.war /usr/local/tomcat/webapps





