# Base image
FROM eclipse-temurin:17-jdk

# Create app directory
WORKDIR /app

# Copy all files
COPY . .

# Build the project
RUN ./mvnw clean install

# Run the application
CMD ["java", "-jar", "target/calculator-0.0.1-SNAPSHOT.jar"]
