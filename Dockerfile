# Start from OpenJDK base image
FROM openjdk:17-jdk-slim

# Create app directory
WORKDIR /app

# Copy jar file (assuming you've built it first)
COPY target/*.jar app.jar

# Expose port
EXPOSE 8080

# Command to run the jar
ENTRYPOINT ["java", "-jar", "app.jar"]
