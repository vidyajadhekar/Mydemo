
FROM openjdk:11
WORKDIR /app
COPY Mydemo.java .
RUN javac Mydemo.java
CMD ["java", "Demo2Application"]

