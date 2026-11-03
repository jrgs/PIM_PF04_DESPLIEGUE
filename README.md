# demo-cd

App mínima (Spring Boot 3 + Thymeleaf + Spring Security) para practicar despliegue continuo.

## Variables (fichero `.env` o entorno de la plataforma)
| Variable   | Descripción                          |
|------------|--------------------------------------|
| APP_USER   | Usuario autorizado                   |
| APP_PWD    | Contraseña de ese usuario            |
| APP_PORT   | Puerto de escucha (por defecto 5000) |

## En local
    cp .env.example .env
    mvn spring-boot:run
    # http://localhost:5000

## Empaquetado
    mvn clean package      # genera target/app.jar
