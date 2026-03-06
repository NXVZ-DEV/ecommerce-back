-- Script para crear la tabla de productos y realizar inserciones de prueba de Crocheteando

-- 1. Eliminar la tabla si ya existe (opcional, cuidado con datos existentes)
-- DROP TABLE IF EXISTS productos;

-- 2. Crear la tabla 'productos' si no existe
CREATE TABLE IF NOT EXISTS productos (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    descripcion TEXT,
    precio DECIMAL(10, 2) NOT NULL,
    imagen TEXT
);

-- 3. Limpiar tabla antes de insertar (opcional)
-- TRUNCATE TABLE productos;

-- 4. Insertar productos de prueba para Crocheteando
INSERT INTO productos (nombre, descripcion, precio, imagen) VALUES
('Ramo Eterno de Rosas', 'Ramo de 6 rosas tejidas a mano en hilo de algodón premium, color rojo vibrante.', 45.00, 'https://images.unsplash.com/photo-1610444583489-3286f9f6888c?auto=format&fit=crop&q=80&w=200'),
('Ramo de Tulipanes Pasteles', 'Combinación de tulipanes tejidos en tonos lila, rosa y blanco. No se marchitan nunca.', 38.50, 'https://images.unsplash.com/photo-1599395243171-460d3d52367d?auto=format&fit=crop&q=80&w=200'),
('Girasol Individual con Tallo', 'Girasol grande tejido a crochet, ideal para regalar un detalle lleno de luz.', 15.00, 'https://images.unsplash.com/photo-1597848212624-a19eb3ba81a5?auto=format&fit=crop&q=80&w=200'),
('Ramo de Lirios Elegantes', 'Elegantes lirios blancos tejidos con técnica amigurumi, perfectos para decoración.', 52.00, 'https://images.unsplash.com/photo-1518709268805-4e9042af9f23?auto=format&fit=crop&q=80&w=200'),
('Mini Ramo de Flores Variadas', 'Combinación artesanal de mini rosas, margaritas y lavanda tejida.', 28.90, 'https://images.unsplash.com/photo-1563245372-f21724e3856d?auto=format&fit=crop&q=80&w=200'),
('Ramo Bouquet de Lavanda', 'Ramillete de lavanda aromática simulada en tejido, ideal para escritorios.', 22.00, 'https://images.unsplash.com/photo-1499002238440-d264edd596ec?auto=format&fit=crop&q=80&w=200');
