# Use the official OpenJDK image as the base image
FROM openjdk:11-jdk

# Set the working directory to /app
WORKDIR /app

# Copy the application jar file to the container
COPY target/my-application.jar my-application.jar
RUN gradle --no-daemon build -x test

# Run the application
CMD ["java", "-jar", "my-application.jar"]
