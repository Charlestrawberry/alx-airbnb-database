-- 1️⃣ Initial query (unoptimized)
EXPLAIN
SELECT 
    b.booking_id,
    u.first_name,
    u.last_name,
    p.name AS property_name,
    pay.amount,
    pay.status AS payment_status
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
JOIN payments pay ON b.booking_id = pay.booking_id;

-- 2️⃣ Optimized version using indexes and selective columns
SELECT 
    b.booking_id,
    CONCAT(u.first_name, ' ', u.last_name) AS user_name,
    p.name AS property_name,
    pay.amount,
    pay.status
FROM bookings b
STRAIGHT_JOIN users u ON b.user_id = u.user_id
STRAIGHT_JOIN properties p ON b.property_id = p.property_id
LEFT JOIN payments pay ON b.booking_id = pay.booking_id
WHERE b.total_amount > 100 AND pay.status = 'Completed';
