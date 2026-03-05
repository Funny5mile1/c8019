package com.whistlestop.whistlestop.repository;

import com.whistlestop.whistlestop.model.Order;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface OrderRepository extends JpaRepository<Order, Long> {
    List<Order> findByArchivedAtIsNull();
    List<Order> findByArchivedAtIsNotNull();
    List<Order> findByCustomerId(Long customerId);
}