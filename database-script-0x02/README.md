
---

## 🧾 **2️⃣ database-script-0x02/README.md**  
> Explains how to **run the seed file** (`seed.sql`)

```markdown
# Database Seeding Guide

##  Overview
This directory contains SQL scripts for populating the **Airbnb Database** with sample data.  
The sample data is designed to demonstrate realistic relationships between users, properties, bookings, reviews, and payments.

---

##  Files
- **seed.sql** → Contains SQL `INSERT` statements to add sample records into all tables.
- **README.md** → This file, explaining how to execute the seeding script.

---

##  Prerequisites
Before seeding, ensure that:
- You’ve already executed `schema.sql` from the `database-script-0x01` directory.
- Your database (`airbnb_db`) exists and all tables are created.
- You are connected to the correct database.

---

##  How to Run the Seed File

### 🖥️ Option 1: Using PostgreSQL CLI
```bash
# Connect to the database
psql -d airbnb_db

# Run the seeding script
\i seed.sql
