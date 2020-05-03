FROM evggen0904/alpine-mvn-git:v1

RUN mkdir -p /home/goryainov && cd /home/goryainov \
        && git clone https://github.com/evggen0904/docker-hello-world.git \
        && cd docker-hello-world \
        && mvn clean install

WORKDIR /home/goryainov

RUN cp -r /home/goryainov/docker-hello-world/target/docker-hello-world.jar /home/goryainov

RUN rm -rf /home/goryinov/docker-hello-world

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "docker-hello-world.jar"]
