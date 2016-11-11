FROM centos

RUN yum update -y
RUN yum install java-1.8.0-openjdk -y

ADD docker-springboot-restful-1.0-SNAPSHOT.jar .

EXPOSE 8080

ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar docker-springboot-restful-1.0-SNAPSHOT.jar" ]