FROM maven:latest
WORKDIR /app
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN cd boxfuse-sample-java-war-hello/
RUN mvn package






