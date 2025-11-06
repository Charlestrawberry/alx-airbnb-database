-- Identify high-usage columns and create indexes
CREATE INDEX idx_user_id ON bookings(user_id);
CREATE INDEX idx_property_id ON bookings(property_id);
CREATE INDEX idx_start_date ON bookings(start_date);
CREATE INDEX idx_location ON properties(location);
CREATE INDEX idx_rating ON reviews(rating);

CREATE INDEX idx_user_email ON users(email);
CREATE INDEX idx_property_location ON properties(location);
CREATE INDEX idx_booking_dates ON bookings(start_date, end_date);

-- Test performance before and after with EXPLAIN
EXPLAIN ANALYZE
SELECT * FROM bookings
WHERE start_date > '2024-01-01'
ORDER BY end_date DESC;

EXPLAIN SELECT * FROM bookings WHERE user_id = 2;
EXPLAIN SELECT * FROM properties WHERE location = 'Lagos';
