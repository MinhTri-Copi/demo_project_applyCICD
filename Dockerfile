# Stage 1: Build
FROM maven:3.9-eclipse-temurin-22 AS build
WORKDIR /app

COPY pom.xml .
COPY src ./src

# Build JAR (pom.xml đã có repo Aliyun nếu Central lỗi)
RUN mvn clean package -DskipTests

# Stage 2: Run
FROM eclipse-temurin:22-jre
WORKDIR /app

COPY --from=build /app/target/DuongPhamMinhTri-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
