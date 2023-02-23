
FROM openjdk:11-stretch
WORKDIR /tmp/build
COPY . .
RUN ./gradlew build
CMD ["java", "Demo2Application"]

