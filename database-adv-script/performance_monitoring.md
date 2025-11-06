Monitoring results:
 - Queries on bookings filtered by user_id + status were slow.
 - Added composite index (user_id, status).
 - Execution time dropped from 0.9s → 0.25s.

Tools used:
 - EXPLAIN ANALYZE for query plans
 - SHOW PROFILE for CPU/IO diagnostics
