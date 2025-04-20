USE ecommerce;

INSERT INTO users (name, email, password) VALUES
('Ali Mohammadi', 'ali.mohammadi@example.com', 'hashedpass1'),
('Sara Ahmadi', 'sara.ahmadi@example.com', 'hashedpass2'),
('Reza Karimi', 'reza.karimi@example.com', 'hashedpass3'),
('Fatemeh Zarei', 'fatemeh.zarei@example.com', 'hashedpass4'),
('Hossein Ranjbar', 'hossein.ranjbar@example.com', 'hashedpass5'),
('Narges Safari', 'narges.safari@example.com', 'hashedpass6'),
('Mohammad Jafari', 'm.jafari@example.com', 'hashedpass7'),
('Elham Khani', 'elham.kh@example.com', 'hashedpass8'),
('Milad Rastegar', 'milad.rastegar@example.com', 'hashedpass9'),
('Zahra Khademi', 'zahra.khademi@example.com', 'hashedpass10');


INSERT INTO addresses (user_id, address_line, city, state, postal_code, country) VALUES
(1, '123 Valiasr St.', 'Tehran', 'Tehran', '11368', 'Iran'),
(2, '45 Ferdows Blvd', 'Shiraz', 'Fars', '71439', 'Iran'),
(3, '78 Azadi Ave', 'Mashhad', 'Khorasan', '91888', 'Iran'),
(4, '23 Taleghani St.', 'Isfahan', 'Isfahan', '81455', 'Iran'),
(5, '67 Hafez St.', 'Tabriz', 'East Azarbayjan', '51387', 'Iran'),
(6, '89 Motahari Blvd', 'Karaj', 'Alborz', '31568', 'Iran'),
(7, '56 Jomhouri Ave', 'Kerman', 'Kerman', '76144', 'Iran'),
(8, '12 Ghods St.', 'Qazvin', 'Qazvin', '34138', 'Iran'),
(9, '98 Imam St.', 'Arak', 'Markazi', '38156', 'Iran'),
(10, '34 Ghasrodasht Ave', 'Shiraz', 'Fars', '71467', 'Iran'),
(1, '3 Shahed St.', 'Tehran', 'Tehran', '11367', 'Iran'),
(2, '9 Laleh St.', 'Tehran', 'Tehran', '11360', 'Iran');


INSERT INTO categories (name) VALUES
('Electronics'),
('Books'),
('Clothing'),
('Home Appliances');

INSERT INTO categories (name, parent_id) VALUES
('Smartphones', 1),
('Laptops', 1),
('Fiction', 2),
('Non-fiction', 2);


INSERT INTO products (name, description, price, category_id) VALUES
('iPhone 13', 'Apple smartphone', 999.99, 5),
('Galaxy S22', 'Samsung smartphone', 899.99, 5),
('Dell XPS 13', 'Laptop with 16GB RAM', 1199.99, 6),
('HP Spectre', 'Touchscreen laptop', 1099.99, 6),
('The Alchemist', 'A book by Paulo Coelho', 19.99, 7),
('1984', 'George Orwell novel', 14.99, 7),
('Sapiens', 'A brief history of humankind', 24.99, 8),
('Educated', 'Memoir by Tara Westover', 17.99, 8),
('T-shirt', 'Cotton t-shirt', 12.99, 3),
('Jeans', 'Blue denim jeans', 39.99, 3),
('Washing Machine', 'Automatic front load', 499.99, 4),
('Microwave', '1000W with grill', 129.99, 4);


INSERT INTO inventory (product_id, quantity) VALUES
(1, 25),
(2, 30),
(3, 15),
(4, 10),
(5, 50),
(6, 40),
(7, 35),
(8, 20),
(9, 100),
(10, 60),
(11, 8),
(12, 22);


INSERT INTO orders (user_id, total_amount, status) VALUES
(1, 1014.98, 'completed'),
(2, 24.99, 'completed'),
(3, 39.99, 'pending'),
(4, 129.99, 'completed'),
(5, 999.99, 'canceled'),
(6, 12.99, 'completed'),
(7, 529.98, 'completed'),
(8, 14.99, 'pending'),
(9, 17.99, 'completed'),
(9, 1499.98, 'completed');

INSERT INTO transactions (order_id, payment_method, status) VALUES
(1, 'credit_card', 'successful'),
(2, 'paypal', 'successful'),
(3, 'paypal', 'pending'),
(4, 'bank_transfer', 'successful'),
(5, 'credit_card', 'failed'),
(6, 'credit_card', 'successful'),
(7, 'paypal', 'successful'),
(8, 'bank_transfer', 'pending'),
(9, 'credit_card', 'successful'),
(10, 'paypal', 'successful');


INSERT INTO order_items (order_id, product_id, quantity, price) VALUES
(1, 1, 1, 999.99),
(1, 5, 1, 14.99),
(2, 6, 1, 14.99),
(2, 7, 1, 9.99),
(3, 10, 1, 39.99),
(4, 12, 1, 129.99),
(5, 2, 1, 999.99),
(6, 9, 1, 12.99),
(7, 11, 1, 499.99),
(7, 5, 2, 15.00),
(8, 6, 1, 14.99),
(9, 8, 1, 17.99),
(10, 3, 1, 1199.99),
(10, 4, 1, 1099.99),
(1, 9, 2, 12.99),
(1, 7, 1, 24.99),
(2, 5, 1, 19.99),
(3, 8, 1, 17.99),
(6, 6, 2, 14.99),
(9, 5, 1, 19.99);


