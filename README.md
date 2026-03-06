# 🧶 Crocheteando - E-commerce Backend

Este es el backend de la tienda **Crocheteando**, desarrollado con **Spring Boot** y **PostgreSQL**. Permite gestionar y listar productos artesanales tejidos a crochet.

## 🚀 Cómo ejecutar localmente

### 1. Requisitos
*   Java 21
*   Maven (o usa el wrapper `./mvnw`)
*   Base de datos PostgreSQL (puedes usar una en la nube como Render)

### 2. Configuración
Crea un archivo llamado `.env` en la raíz del proyecto con el siguiente contenido:

```env
DB_URL=jdbc:postgresql://tu-host-de-render/db_name
DB_USERNAME=tu_usuario
DB_PASSWORD=tu_contraseña
```

### 3. Ejecución
Abre una terminal en la carpeta del proyecto y ejecuta:

```powershell
# En Windows
.\mvnw.cmd spring-boot:run
```

```bash
# En Linux/Mac
./mvnw spring-boot:run
```

La API estará disponible en: `http://localhost:8081/api/productos`

---

## ☁️ Despliegue en Render

El proyecto está listo para ser desplegado en **Render** usando **Docker**.

1.  Crea un nuevo **Web Service** en Render.
2.  Conecta tu repositorio de GitHub.
3.  En **Runtime**, selecciona **Docker**.
4.  En la pestaña **Environment**, añade las variables `DB_URL`, `DB_USERNAME` y `DB_PASSWORD`.

## 🛠️ Tecnologías utilizadas
*   **Java 21**
*   **Spring Boot 3.x** (Web, Data JPA)
*   **PostgreSQL**
*   **Hibernate**
*   **Docker**
*   **Dotenv Java** (para gestión de variables de entorno)

---
Creado para el proyecto final de Java.
