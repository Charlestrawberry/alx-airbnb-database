# Normalization Process (to 3NF)

## Step 1: 1NF
- All columns contain atomic values.
- Replaced multi-valued fields (e.g., amenities) with junction tables.

## Step 2: 2NF
- Removed partial dependencies.
- Example: Split Booking and Payment into separate tables.

## Step 3: 3NF
- Removed transitive dependencies.
- Example: Created PaymentMethod table for method details.
- Ensured every non-key attribute depends only on the primary key.

## Final Result
- Database schema fully normalized to 3NF.
