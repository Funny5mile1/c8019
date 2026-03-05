package com.whistlestop.whistlestop.model;

import jakarta.persistence.*;
import java.math.BigDecimal;

@Entity
@Table(name = "menu_items")
public class MenuItem {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false, length = 50)
    private String name;

    @Column(name = "has_size", nullable = false)
    private Boolean hasSize = true;

    @Column(name = "price_regular", precision = 5, scale = 2)
    private BigDecimal priceRegular;

    @Column(name = "price_large", precision = 5, scale = 2)
    private BigDecimal priceLarge;

    @Column(name = "is_available", nullable = false)
    private Boolean isAvailable = true;

    // Getters and Setters
}
