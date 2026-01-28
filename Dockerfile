# ===============================
# Stage 1: Build the application
# ===============================
FROM maven:3.9.9-amazoncorretto-21-alpine AS builder
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# ===============================
# Stage 2: Run the application
# ===============================
FROM eclipse-temurin:21-jre-alpine
WORKDIR /app

COPY --from=builder /app/target/*.war app.war

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.war"]