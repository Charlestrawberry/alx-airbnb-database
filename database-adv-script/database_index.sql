-- Identify high-usage columns and create indexes
CREATE INDEX idx_user_id ON bookings(user_id);
CREATE INDEX idx_property_id ON bookings(property_id);
CREATE INDEX idx_start_date ON bookings(start_date);
CREATE INDEX idx_location ON properties(location);
CREATE INDEX idx_rating ON reviews(rating);

-- Test performance before and after with EXPLAIN
EXPLAIN SELECT * FROM bookings WHERE user_id = 2;
EXPLAIN SELECT * FROM properties WHERE location = 'Lagos';
