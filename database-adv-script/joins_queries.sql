SELECT 
b.booking_id, 
CONCAT(u.first_name, ' ', u.last_name) AS user_name,
u.email,
b.start_date,
b.end_date,
b.total_amount,
b.status
FROM bookings b
INNER JOIN users u ON b.user_id = u.user_id;

-- LEFT JOIN; Retrieve all properties
SELECT 
 p.property_id,
p.name AS property_name,
p.location,
r.rating,
r.comment
FROM properties p
LEFT JOIN reviews r ON p.property_id = r.property_id
ORDER BY p.property_id;

-- FULL OUTER JOIN: Retrieve all users and bookings, even if the user has no booking
-- MySQL workaround using UNION (since FULL OUTER JOIN isn’t directly supported)
SELECT 
    u.user_id,
    CONCAT(u.first_name, ' ', u.last_name) AS user_name,
    b.booking_id,
    b.start_date,
    b.status
FROM users u
LEFT JOIN bookings b ON u.user_id = b.user_id

UNION

SELECT 
    u.user_id,
    CONCAT(u.first_name, ' ', u.last_name) AS user_name,
    b.booking_id,
    b.start_date,
    b.status
FROM users u
RIGHT JOIN bookings b ON u.user_id = b.user_id
ORDER BY user_id;