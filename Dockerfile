
FROM openjdk:11-stretch
WORKDIR /app
COPY Mydemo.java .
RUN javac Mydemo.java
CMD ["java", "Demo2Application"]

