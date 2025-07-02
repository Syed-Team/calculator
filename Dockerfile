 HEAD
# Start from OpenJDK base image
FROM openjdk:17-jdk-slim
# Base image
FROM eclipse-temurin:17-jdk
815edbda8c20ae45b7044ec03c7580a9cba4ac21

# Create app directory
WORKDIR /app

HEAD
# Copy jar file (assuming you've built it first)
COPY target/*.jar app.jar

# Expose port
EXPOSE 8080

# Command to run the jar
ENTRYPOINT ["java", "-jar", "app.jar"]
# Copy all files
COPY . .

# Build the project
RUN ./mvnw clean install

# Run the application
CMD ["java", "-jar", "target/calculator-0.0.1-SNAPSHOT.jar"]
815edbda8c20ae45b7044ec03c7580a9cba4ac21
