
FROM openjdk:11-stretch
WORKDIR /tmp/build
COPY . .
RUN gradle --no-daemon build -x test
CMD ["java", "Demo2Application"]

