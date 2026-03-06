# Etapa 1: Construcción
FROM eclipse-temurin:21-jdk AS build
WORKDIR /app

# Copiar archivos del proyecto
COPY . .

# Dar permisos de ejecución al wrapper de Maven
RUN chmod +x mvnw

# Construir el archivo JAR (saltando los tests para acelerar el despliegue)
RUN ./mvnw clean package -DskipTests

# Etapa 2: Ejecución
FROM eclipse-temurin:21-jre
WORKDIR /app

# Copiar solo el JAR generado desde la etapa anterior
COPY --from=build /app/target/*.jar app.jar

# Exponer el puerto (aunque Render lo maneja dinámicamente)
EXPOSE 8081

# Comando para iniciar la aplicación
ENTRYPOINT ["java", "-jar", "app.jar"]
