Before indexing:
 - Query on bookings.user_id took ~1.2s for 500K rows (full table scan).

After adding indexes:
 - Query used index idx_user_id (type: ref).
 - Execution time dropped to 0.15s (~85% improvement).

EXPLAIN output confirmed reduced 'rows' and 'filtered' values.
