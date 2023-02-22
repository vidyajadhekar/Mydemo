
FROM openjdk:16-alpine
WORKDIR /app
COPY Mydemo.java .
RUN javac Mydemo.java
CMD ["java", "HelloDocker"]

