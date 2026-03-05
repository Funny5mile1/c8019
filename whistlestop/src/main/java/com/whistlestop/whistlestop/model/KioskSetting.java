package com.whistlestop.whistlestop.model;

import jakarta.persistence.*;

@Entity
@Table(name = "kiosk_settings")
public class KioskSetting {
    @Id
    @Column(name = "setting_key", length = 50)
    private String settingKey;

    @Column(name = "setting_value", nullable = false)
    private String settingValue;

    // Getters and Setters
}