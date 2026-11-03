# Para Render (que no tiene runtime Java nativo). Railway puede usarlo o detectar Maven solo.
FROM maven:3.9-amazoncorretto-17 AS build

WORKDIR /app

COPY pom.xml .

RUN mvn -q dependency:go-offline

COPY src ./src

RUN mvn -q clean package -DskipTests

FROM amazoncorretto:17

WORKDIR /app

COPY --from=build /app/target/app.jar app.jar

# Render inyecta PORT; la app usa APP_PORT, que se define como variable de entorno en el panel.

ENTRYPOINT ["java", "-jar", "app.jar"]
