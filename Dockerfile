
FROM openjdk:11-stretch
WORKDIR /app
COPY . /app
RUN javac Mydemo.java
CMD ["java", "Demo2Application"]

