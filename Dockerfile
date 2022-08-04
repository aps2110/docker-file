FROM maven:3.8.6-openjdk-11 as maven_build
WORKDIR /app
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN mvn -f /app/boxfuse-sample-java-war-hello/pom.xml package





