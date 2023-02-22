# Use the official OpenJDK image as the base image
FROM openjdk:11-jdk

# Set the working directory to /app
WORKDIR /app

# Copy the application jar file to the container
COPY target/Mydemo.jar Mydemo.jar


# Run the application
CMD ["java", "-jar", "Mydemo.jar"]

