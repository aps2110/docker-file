FROM ubuntu:16.04
RUN apt update
RUN apt install -y default-jdk
RUN apt install -y maven
RUN apt install -y docker.io
RUN apt install -y openssh-client
COPY id_rsa /root/.ssh/id_rsa
RUN chmod 600 /root/.ssh/id_rsa
CMD docker start
