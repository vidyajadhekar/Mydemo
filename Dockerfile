
FROM openjdk:11-stretch
WORKDIR /tmp/build
COPY . .
RUN javac Mydemo.java
CMD ["java", "Demo2Application"]

