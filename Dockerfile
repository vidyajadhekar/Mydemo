
FROM openjdk:11-stretch
WORKDIR /tmp/build
COPY . .
EXPOSE 8080
CMD ["java", "Demo2Application"]

