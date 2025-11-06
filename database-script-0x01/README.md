# Database Schema Setup

##  Overview
This directory contains the SQL script that defines the **Airbnb Database Schema**.  
It creates all necessary tables, constraints, and relationships based on the ERD design.

---

##  Files
- **schema.sql** → Contains all `CREATE TABLE` statements for the Airbnb database.
- **README.md** → This file, explaining setup and execution steps.

---

##  Prerequisites
Before running the script, ensure you have:
- **PostgreSQL** or **MySQL** installed (depending on your setup).
- A database named `airbnb_db` (you can change the name as needed).
- Appropriate privileges to create tables.

---

##  How to Run the Schema File

### Option 1: Using PostgreSQL CLI
```bash
# 1. Create the database
created airbnb_db

# 2. Connect to it
psql -d airbnb_db

# 3. Run the schema file
\i schema.sql
