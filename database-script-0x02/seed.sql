INSERT INTO users (first_name, last_name, email, phone_number, password)
VALUES
('John', 'Doe', 'john@example.com', '1234567890', 'hashed_pass1'),
('Jane', 'Smith', 'jane@example.com', '0987654321', 'hashed_pass2');

INSERT INTO properties (user_id, name, description, location, price_per_night, property_type)
VALUES
(1, 'Cozy Apartment', 'Near the beach', 'Lagos', 80.00, 'Apartment'),
(2, 'Luxury Villa', 'Private pool and garden', 'Abuja', 300.00, 'Villa');

INSERT INTO bookings (user_id, property_id, start_date, end_date, total_amount, status)
VALUES
(2, 1, '2025-11-01', '2025-11-05', 320.00, 'Confirmed');

INSERT INTO payments (booking_id, amount, payment_method, status)
VALUES
(1, 320.00, 'Credit Card', 'Completed');

INSERT INTO amenities (name, description)
VALUES
('WiFi', 'High-speed internet'),
('Pool', 'Outdoor swimming pool');

INSERT INTO property_amenities (property_id, amenity_id)
VALUES
(2, 2);
