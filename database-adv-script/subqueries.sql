SELECT 
p.property_id, 
p.name AS property_name,
p.location,
FROM properties p
WHERE p.property_id IN (
    SELECT property_id FROM reviews
    GROUP BY property_id
    HAVING AVG(rating) > 4.0
);

--  Correlated subquery: Users who have made more than 3 bookings
SELECT 
    u.user_id,
    CONCAT(u.first_name, ' ', u.last_name) AS user_name,
    u.email
FROM users u
WHERE (
    SELECT COUNT(*)
    FROM bookings b
    WHERE b.user_id = u.user_id
) > 3;

