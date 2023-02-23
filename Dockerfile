
FROM openjdk:11-jdk
WORKDIR /app
COPY src /app/src
RUN javac src/Demo2Application.java
CMD ["java","src", "Demo2Application"]

