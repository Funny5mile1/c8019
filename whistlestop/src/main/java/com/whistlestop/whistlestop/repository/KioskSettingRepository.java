package com.whistlestop.whistlestop.repository;

import com.whistlestop.whistlestop.model.KioskSetting;
import org.springframework.data.jpa.repository.JpaRepository;

public interface KioskSettingRepository extends JpaRepository<KioskSetting, String> {
}