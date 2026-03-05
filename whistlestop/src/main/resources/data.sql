INSERT INTO menu_items (name, has_size, price_regular, price_large) VALUES
('Americano', true, 1.50, 2.00),
('Americano with Milk', true, 2.00, 2.50),
('Latte', true, 2.50, 3.00),
('Cappuccino', true, 2.50, 3.00),
('Hot Chocolate', true, 2.00, 2.50),
('Mocha', true, 2.50, 3.00),
('Mineral Water', false, 1.00, null);

INSERT INTO kiosk_settings (setting_key, setting_value) VALUES
('kiosk_name', 'Whistlestop Coffee Hut'),
('location', 'Cramlington Station'),
('hours_mon_fri', '06:30-19:00'),
('hours_sat', '07:00-18:00'),
('hours_sun', 'closed'),
('no_show_timeout_min', '15');