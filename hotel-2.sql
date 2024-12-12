USE hotel;
INSERT INTO Hotels (name, address, city, country, description, rating, phone, email, website, total_rooms)
VALUES ('Hotel Pars', 'Street 1, Tehran', 'Tehran', 'Iran', 'Luxury hotel in the heart of Tehran', 4.5, '021-12345678',
        'info@hotelpars.com', 'www.hotelpars.com', 50),
       ('Hotel Mellat', 'Street 2, Shiraz', 'Shiraz', 'Iran', 'Comfortable and affordable hotel', 4.0, '071-23456789',
        'contact@hotelmellat.com', 'www.hotelmellat.com', 30),
       ('Hotel Azadi', 'Street 3, Isfahan', 'Isfahan', 'Iran', 'A beautiful hotel with modern amenities', 4.7,
        '031-34567890', 'support@hotelazadi.com', 'www.hotelazadi.com', 60),
       ('Grand Hotel', 'Street 4, Tabriz', 'Tabriz', 'Iran', 'An iconic hotel offering top-notch service', 5.0,
        '041-45678901', 'hello@grandhotel.com', 'www.grandhotel.com', 100),
       ('Hotel Safir', 'Street 5, Mashhad', 'Mashhad', 'Iran', 'Relaxing and peaceful hotel near the shrine', 4.3,
        '051-56789012', 'reservations@hotelsafir.com', 'www.hotelsafir.com', 40);


INSERT INTO Rooms (hotel_id, room_number, room_type, price, max_occupancy, availability)
VALUES (1, '101', 'Single', 100.00, 1, TRUE),
       (1, '102', 'Double', 150.00, 2, TRUE),
       (1, '103', 'Suite', 250.00, 4, TRUE),
       (2, '201', 'Single', 80.00, 1, TRUE),
       (2, '202', 'Double', 130.00, 2, TRUE),
       (3, '301', 'Single', 120.00, 1, TRUE),
       (3, '302', 'Double', 180.00, 2, TRUE),
       (3, '303', 'Suite', 300.00, 4, TRUE),
       (4, '401', 'Single', 110.00, 1, TRUE),
       (4, '402', 'Double', 170.00, 2, TRUE),
       (5, '501', 'Single', 90.00, 1, TRUE),
       (5, '502', 'Double', 140.00, 2, TRUE);


INSERT INTO Hotel_Amenities (hotel_id, amenity_name, description)
VALUES (1, 'Free Wi-Fi', 'Complimentary high-speed internet available throughout the hotel'),
       (1, 'Swimming Pool', 'Outdoor pool for guests to enjoy'),
       (2, 'Free Parking', 'On-site parking available for guests'),
       (2, 'Restaurant', 'Serving delicious local and international cuisine'),
       (3, 'Gym', 'Fully equipped fitness center'),
       (3, 'Free Wi-Fi', 'Complimentary Wi-Fi in all rooms and public areas'),
       (4, 'Spa', 'Luxury spa services for relaxation and rejuvenation'),
       (4, 'Bar', 'A cozy bar offering a variety of drinks'),
       (5, 'Shuttle Service', 'Free shuttle service to the shrine and local attractions'),
       (5, '24-Hour Reception', '24/7 front desk service for guests');


INSERT INTO Customers (name, email, phone)
VALUES ('Ali Reza', 'ali.reza@example.com', '09121234567'),
       ('Sara Mohammadi', 'sara.mohammadi@example.com', '09129876543'),
       ('Amir Hossein', 'amir.hossein@example.com', '09134567890'),
       ('Niloofar Ahmadi', 'niloofar.ahmadi@example.com', '09135678901'),
       ('Reza Shiri', 'reza.shiri@example.com', '09141234567');


INSERT INTO Reservations (customer_id, room_id, check_in_date, check_out_date, total_price, status)
VALUES (1, 1, '2024-12-15', '2024-12-20', 500.00, 'confirmed'),
       (2, 4, '2024-12-16', '2024-12-18', 340.00, 'pending'),
       (3, 7, '2024-12-18', '2024-12-22', 600.00, 'confirmed'),
       (4, 10, '2024-12-20', '2024-12-22', 280.00, 'cancelled'),
       (5, 5, '2024-12-25', '2024-12-28', 420.00, 'pending');


INSERT INTO Payments (reservation_id, amount, payment_method)
VALUES (1, 500.00, 'credit_card'),
       (2, 340.00, 'paypal'),
       (3, 600.00, 'bank_transfer'),
       (5, 420.00, 'credit_card');
