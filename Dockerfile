
FROM openjdk:11-stretch
WORKDIR /tmp/build
COPY . .
RUN javac Demo2Application.java
CMD ["java", "Demo2Application"]

