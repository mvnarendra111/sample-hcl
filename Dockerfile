FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD target/sample-hcl-0.0.1-SNAPSHOT.jar sample-hcl.jar
RUN sh -c 'touch /sample-hcl.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/sample-hcl.jar"]

