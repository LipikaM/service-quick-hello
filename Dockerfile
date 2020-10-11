FROM openjdk:7

WORKDIR /data/service-quick-hello

ADD target/service-quick-hello-1.0-SNAPSHOT.jar /data/service-quick-hello/service-quick-hello-1.0-SNAPSHOT.jar

ADD example.yml /data/service-quick-hello/example.yml

EXPOSE 9000 9001

ENTRYPOINT ["java", "-jar", "service-quick-hello-1.0-SNAPSHOT.jar", "server", "example.yml"]