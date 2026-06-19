FROM openjdk:17-slim
WORKDIR /app
COPY . .
RUN ./gradlew build --no-daemon
CMD ["java", "-jar", "gateway/build/libs/EaglerXBungee.jar"]
