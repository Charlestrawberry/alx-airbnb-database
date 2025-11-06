Before partitioning:
 - Query on bookings between 2024-01-01 and 2024-12-31 took 1.1s.

After partitioning by YEAR(start_date):
 - Query time reduced to 0.25s.
 - EXPLAIN output showed partition pruning in effect.

Conclusion:
Partitioning significantly improved time-based queries on large booking datasets.
