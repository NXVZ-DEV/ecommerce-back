package com.crocheteando.ecommerce_back.repository;

import com.crocheteando.ecommerce_back.model.Producto;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductoRepository extends JpaRepository<Producto, Long> {
}
