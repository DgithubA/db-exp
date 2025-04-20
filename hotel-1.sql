CREATE DATABASE IF NOT EXISTS hotel;
USE hotel;

CREATE TABLE hotels
(
    id          INT AUTO_INCREMENT PRIMARY KEY,
    name        VARCHAR(255) NOT NULL,
    address     VARCHAR(255) NOT NULL,
    city        VARCHAR(100) NOT NULL,
    country     VARCHAR(100) NOT NULL,
    description TEXT,
    rating      DECIMAL(3, 2), 
    phone       VARCHAR(20),
    email       VARCHAR(255),
    website     VARCHAR(255),
    total_rooms INT          NOT NULL,
    created_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE rooms
(
    id            INT AUTO_INCREMENT PRIMARY KEY,
    hotel_id      INT,
    room_number   VARCHAR(50)    NOT NULL,
    room_type     VARCHAR(100)   NOT NULL,
    price         DECIMAL(10, 2) NOT NULL,
    max_occupancy INT            NOT NULL, 
    availability  BOOLEAN   DEFAULT TRUE,  
    created_at    TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (hotel_id) REFERENCES hotels (id) ON DELETE CASCADE
);


CREATE TABLE hotel_amenities
(
    id           INT AUTO_INCREMENT PRIMARY KEY,
    hotel_id     INT,
    amenity_name VARCHAR(255) NOT NULL,
    description  TEXT,
    FOREIGN KEY (hotel_id) REFERENCES hotels (id) ON DELETE CASCADE
);


CREATE TABLE customers
(
    id         INT AUTO_INCREMENT PRIMARY KEY,
    name       VARCHAR(255)        NOT NULL,
    email      VARCHAR(255) UNIQUE NOT NULL,
    phone      VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE reservations
(
    id             INT AUTO_INCREMENT PRIMARY KEY,
    customer_id    INT,
    room_id        INT,
    check_in_date  DATE           NOT NULL,
    check_out_date DATE           NOT NULL,
    total_price    DECIMAL(10, 2) NOT NULL,
    status         ENUM ('pending', 'confirmed', 'cancelled') DEFAULT 'pending', 
    created_at     TIMESTAMP                                  DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES customers (id),
    FOREIGN KEY (room_id) REFERENCES rooms (id)
);


CREATE TABLE payments
(
    id             INT AUTO_INCREMENT PRIMARY KEY,
    reservation_id INT,
    amount         DECIMAL(10, 2) NOT NULL,
    payment_date   TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    payment_method VARCHAR(50),
    FOREIGN KEY (reservation_id) REFERENCES reservations (id)
);