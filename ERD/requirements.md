# Airbnb Database ER Diagram

## Entities
- User
- Property
- Booking
- Review
- Payment
- Amenity
- Property_Amenity (link table)

## Relationships
- User (1) → (M) Property
- User (1) → (M) Booking
- Property (1) → (M) Booking
- Booking (1) → (1) Payment
- Property (1) → (M) Review
- User (1) → (M) Review
- Property (M) ↔ (M) Amenity

## Files
- `airbnb_ERD.drawio`
- `airbnb_ERD.png`
