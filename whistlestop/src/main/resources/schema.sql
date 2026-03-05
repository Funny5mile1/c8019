CREATE TABLE users (
  id            BIGINT AUTO_INCREMENT PRIMARY KEY,
  email         VARCHAR(100) NOT NULL UNIQUE,
  password_hash VARCHAR(50) NOT NULL,
  fname         VARCHAR(50) NOT NULL,
  lname         VARCHAR(50) NOT NULL,
  role          VARCHAR(20) NOT NULL DEFAULT 'customer',
  created_at    TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE menu_items (
  id            BIGINT AUTO_INCREMENT PRIMARY KEY,
  name          VARCHAR(50) NOT NULL,
  has_size      BOOLEAN NOT NULL DEFAULT TRUE,
  price_regular DECIMAL(5,2),
  price_large   DECIMAL(5,2),
  is_available  BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE orders (
  id            BIGINT AUTO_INCREMENT PRIMARY KEY,
  customer_id   BIGINT REFERENCES users(id) ON DELETE SET NULL,
  pickup_time   TIMESTAMP NOT NULL,
  status        VARCHAR(30) NOT NULL DEFAULT 'pending',
  total_price   DECIMAL(7,2) NOT NULL,
  cancel_reason VARCHAR(100),
  created_at    TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  archived_at   TIMESTAMP
);

CREATE TABLE order_items (
  id            BIGINT AUTO_INCREMENT PRIMARY KEY,
  order_id      BIGINT NOT NULL REFERENCES orders(id) ON DELETE CASCADE,
  menu_item_id  BIGINT NOT NULL REFERENCES menu_items(id),
  size          VARCHAR(15) NOT NULL DEFAULT 'regular',
  quantity      INT NOT NULL DEFAULT 1,
  unit_price    DECIMAL(5,2) NOT NULL
);

CREATE TABLE order_payment (
  id            BIGINT AUTO_INCREMENT PRIMARY KEY,
  order_id      BIGINT NOT NULL REFERENCES orders(id) ON DELETE CASCADE,
  paid_at       TIMESTAMP NOT NULL
);

CREATE TABLE kiosk_settings (
  setting_key   VARCHAR(50) PRIMARY KEY,
  setting_value TEXT NOT NULL
);