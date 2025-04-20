CREATE DATABASE IF NOT EXISTS hotel;
USE hotel;

-- hotels
INSERT INTO hotels (id, name, address, city, country, description, rating, phone, email, website, total_rooms)
VALUES 
(1, 'Ocean View Hotel', '123 Beach Ave', 'Bandar Abbas', 'Iran', 'Sea-facing rooms with modern amenities.', 4.5, '+982176543210', 'info@oceanview.ir', 'www.oceanview.ir', 120),
(2, 'Mountain Retreat', '88 Valley Rd', 'Rasht', 'Iran', 'Peaceful getaway in the mountains.', 4.7, '+981342765432', 'contact@mountainretreat.ir', 'www.mountainretreat.ir', 80),
(3, 'City Central Inn', '21 Downtown Blvd', 'Tehran', 'Iran', 'Perfect for business travelers.', 4.2, '+982112345678', 'support@citycentral.ir', 'www.citycentral.ir', 100),
(4, 'Desert Mirage Hotel', '56 Dunes St', 'Yazd', 'Iran', 'Unique desert architecture and hospitality.', 4.3, '+983532547890', 'hello@mirage.ir', 'www.mirage.ir', 90),
(5, 'Royal Garden Hotel', '5 Palace Way', 'Isfahan', 'Iran', 'Luxury hotel with garden view.', 4.8, '+983135464620', 'royal@rgarden.ir', 'www.rgarden.ir', 200);

-- rooms
INSERT INTO rooms (id, hotel_id, room_number, room_type, price, max_occupancy, availability)
VALUES
(1, 1, '101', 'Double Deluxe', 850000.00, 2, true),
(2, 1, '102', 'Suite', 1200000.00, 4, true),
(3, 2, '201', 'Single', 450000.00, 1, true),
(4, 2, '202', 'Double', 650000.00, 2, false),
(5, 3, '301', 'Suite', 1100000.00, 3, true);

-- hotel_amenities
INSERT INTO hotel_amenities (id, hotel_id, amenity_name, description)
VALUES
(1, 1, 'Wi-Fi', 'Free high-speed internet access'),
(2, 1, 'Pool', 'Indoor heated pool'),
(3, 2, 'Breakfast', 'Complimentary breakfast included'),
(4, 2, 'Gym', 'Fully equipped fitness center'),
(5, 3, 'Parking', 'Secure underground parking');

-- customers
INSERT INTO customers (id, name, email, phone)
VALUES
(1, 'Ali Rezaei', 'ali.rezaei@gmail.com', '+989121234567'),
(2, 'Sara Mohammadi', 'sara.mohammadi@yahoo.com', '+989122223344'),
(3, 'Mohammad Rahimi', 'mohammad.r@gmail.com', '+989123334455');

-- reservations
INSERT INTO reservations (id, customer_id, room_id, check_in_date, check_out_date, total_price, status)
VALUES
(1, 1, 1, '2025-05-01', '2025-05-03', 1700000.00, 'confirmed'),
(2, 2, 2, '2025-05-05', '2025-05-08', 3600000.00, 'pending'),
(3, 3, 3, '2025-06-10', '2025-06-15', 2250000.00, 'confirmed');

-- payments
INSERT INTO payments (id, reservation_id, amount, payment_method)
VALUES
(1, 1, 1700000.00, 'credit_card'),
(2, 3, 2250000.00, 'cash');
