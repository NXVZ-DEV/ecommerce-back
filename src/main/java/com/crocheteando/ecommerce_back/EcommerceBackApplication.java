package com.crocheteando.ecommerce_back;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import javax.sql.DataSource;
import java.sql.Connection;

import io.github.cdimascio.dotenv.Dotenv;

@SpringBootApplication
public class EcommerceBackApplication {

	public static void main(String[] args) {
		// Cargar variables de entorno desde .env
		Dotenv dotenv = Dotenv.configure().ignoreIfMissing().load();
		dotenv.entries().forEach(entry -> System.setProperty(entry.getKey(), entry.getValue()));

		SpringApplication.run(EcommerceBackApplication.class, args);
	}

	@Bean
	public CommandLineRunner testConnection(DataSource dataSource) {
		return args -> {
			try (Connection connection = dataSource.getConnection()) {
				if (connection != null && !connection.isClosed()) {
					System.out.println("Conexión a PostgreSQL exitosa");
				}
			} catch (Exception e) {
				System.err.println("Error al conectar a la base de datos: " + e.getMessage());
			}
		};
	}
}
