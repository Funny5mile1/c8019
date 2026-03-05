package com.whistlestop.whistlestop.model;

import jakarta.persistence.*;
import java.math.BigDecimal;
import java.time.LocalDateTime;

@Entity
@Table(name = "orders")
public class Order {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "customer_id")
    private User customer;

    @Column(name = "pickup_time", nullable = false)
    private LocalDateTime pickupTime;

    @Column(nullable = false, length = 30)
    private String status = "pending";

    @Column(name = "total_price", nullable = false, precision = 7, scale = 2)
    private BigDecimal totalPrice;

    @Column(name = "cancel_reason", length = 100)
    private String cancelReason;

    @Column(name = "created_at", nullable = false)
    private LocalDateTime createdAt = LocalDateTime.now();

    @Column(name = "archived_at")
    private LocalDateTime archivedAt;

    // Getters and Setters
}