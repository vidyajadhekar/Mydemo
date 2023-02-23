
FROM openjdk:11-stretch
WORKDIR /tmp/build
COPY . .
RUN maven --no-daemon build -x test
CMD ["java", "Demo2Application"]

