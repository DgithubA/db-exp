USE ecommerce;
INSERT INTO users (name, email, password)
VALUES ('Ali Reza', 'ali.reza@example.com', 'password123'),
       ('Sara Mohammadi', 'sara.mohammadi@example.com', 'password123'),
       ('Amir Hossein', 'amir.hossein@example.com', 'password123'),
       ('Niloofar Ahmadi', 'niloofar.ahmadi@example.com', 'password123'),
       ('Reza Shiri', 'reza.shiri@example.com', 'password123');


INSERT INTO addresses (user_id, address_line, city, state, postal_code, country)
VALUES (1, 'Street 1, Apartment 4', 'Tehran', 'Tehran', '123456', 'Iran'),
       (2, 'Street 10, Building 3', 'Shiraz', 'Fars', '654321', 'Iran'),
       (3, 'Street 7, Floor 2', 'Isfahan', 'Isfahan', '112233', 'Iran'),
       (4, 'Street 5, Villa 12', 'Tabriz', 'East Azerbaijan', '445566', 'Iran'),
       (5, 'Street 15, Block B', 'Mashhad', 'Khorasan', '778899', 'Iran');


INSERT INTO categories (name, parent_id)
VALUES ('Electronics', NULL),
       ('Mobile Phones', 1),
       ('Laptops', 1),
       ('Home Appliances', NULL),
       ('Clothing', NULL),
       ('Men\'s Clothing', 5),
       ('Women\'s Clothing', 5);


INSERT INTO products (name, description, price, category_id)
VALUES ('iPhone 13', 'Apple iPhone 13 with 128GB storage', 799.99, 2),
       ('MacBook Pro 16"', 'Apple MacBook Pro with M1 chip', 2399.99, 3),
       ('Samsung Galaxy S22', 'Samsung Galaxy S22 with 256GB storage', 899.99, 2),
       ('Washing Machine', 'Samsung washing machine with 9KG capacity', 499.99, 4),
       ('T-Shirt Men', 'Plain white T-shirt for men', 19.99, 6),
       ('Dress Women', 'Summer dress for women', 49.99, 7),
       ('Smart TV', 'Samsung 55-inch Smart TV', 649.99, 4);


INSERT INTO inventory (product_id, quantity)
VALUES (1, 50),
       (2, 30),
       (3, 40),
       (4, 60),
       (5, 100),
       (6, 80),
       (7, 20);


INSERT INTO orders (user_id, total_amount, status)
VALUES (1, 899.99, 'pending'),
       (2, 2399.99, 'completed'),
       (3, 499.99, 'canceled'),
       (4, 69.98, 'completed'),
       (5, 649.99, 'pending');


INSERT INTO transactions (order_id, payment_method, status)
VALUES (1, 'credit_card', 'pending'),
       (2, 'paypal', 'successful'),
       (3, 'bank_transfer', 'failed'),
       (4, 'credit_card', 'successful'),
       (5, 'paypal', 'pending');


INSERT INTO order_items (order_id, product_id, quantity, price)
VALUES (1, 1, 1, 799.99),
       (1, 7, 1, 649.99),
       (2, 2, 1, 2399.99),
       (3, 4, 1, 499.99),
       (4, 5, 2, 19.99),
       (4, 6, 1, 49.99),
       (5, 3, 1, 899.99);
