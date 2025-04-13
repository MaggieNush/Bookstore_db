## Bookstore_DB Project

Welcome to the `bookstore_DB` project — a fully structured, relational database system built to simulate the operations of a modern bookstore. This project covers everything from planning and creating database structures, assigning user access roles, to inserting and testing realistic data using SQL queries.

---

## Project Objectives

This project was designed to:

- Build a comprehensive and normalized bookstore database from scratch.
- Implement relational links using **primary and foreign keys**.
- Assign **user roles** for access control and permissions.
- Populate the system with sample data for testing and validation.
- Run meaningful queries to analyze and confirm database integrity.

---

## Phase 1: Database & Table Creation

We started by creating the `bookstore_DB` using the `CREATE DATABASE` and `USE` commands.

### Tables Created:

1. `order_status`
2. `address_status`
3. `country`
4. `author`
5. `shipping_method`
6. `customer`
7. `publisher`
8. `address`
9. `customer_address`
10. `language`
11. `book`
12. `book_author`
13. `customer_order`
14. `order_line`
15. `order_history`

Each table was crafted with:

- A **Primary Key** (e.g., `customer_id`, `book_id`)
- Relevant **Foreign Keys** (e.g., `language_id`, `publisher_id`, `country_id`) to ensure referential integrity
- Proper data types (`VARCHAR`, `DECIMAL`, `DATE`, etc.)

We resolved relationship complexities such as:

- **Many-to-Many** (`book` ↔ `author`) via `book_author`
- **One-to-Many** (`customer` ↔ `address` via `customer_address`)
- **Order Tracking** (`customer_order` ↔ `order_line` ↔ `order_history`)

---

## Phase 2: User Groups & Roles

To control access and enforce security:

- Created **user accounts** with distinct permissions
- Defined **roles** such as `admin`, `data_entry`, `readonly`
- Granted access per role to specific databases and actions (SELECT, INSERT, UPDATE, etc.)

Example MySQL role assignment:

```sql
CREATE ROLE 'data_entry';
GRANT INSERT, UPDATE ON bookstore_DB.* TO 'data_entry';
GRANT 'data_entry' TO 'maggie'@'localhost';
SET DEFAULT ROLE 'data_entry' TO 'maggie'@'localhost';
```

---

## Phase 3: Data Insertion for Testing

Populated tables with **realistic sample data** including:

- Languages: English, Swahili
- Countries: Kenya, UK
- Authors & Publishers: Linked to books via proper IDs
- Customers: With phone, email, and linked addresses
- Orders: Simulated real purchases, shipping methods, and statuses

Handled duplicate constraints and data conflicts (e.g., avoiding multiple `EN` entries in the `language` table).

---

## Phase 4: Data Testing & Querying

We tested the database using practical SQL queries:

### Example Queries:

- **Customer orders and their statuses**
- **Books with authors, genre, and language**
- **Order line items and invoice totals**
- **Order status history (change tracking)**

Each query helped us validate:

- Foreign key relationships
- Data accuracy and format
- The functional flow of how a book moves from inventory to a customer's order

---

## Results & Learnings

- Successfully created a clean, normalized bookstore database with real-world logic.
- Learned and implemented **MySQL user management and access control**.
- Understood how to test relational databases using **JOINs** and **GROUP BY** clauses.
- Troubleshot and corrected SQL errors, including data conflicts and type mismatches.

---

## Technologies Used

- **MySQL 8+**
- **WorkBench / MySQL CLI**
- **ERD visualization tools** (draw.io)
- **Manual SQL scripting**

---

## Folder Structure

```
bookstore_DB/
├── ans.sql            # All CREATE TABLE statements
├── insert_data.sql       # Sample data inserts
├── test_queries.sql      # Queries used for testing
├── users-roles.sql      # Queries used for creating and assigning roles
├── README.md             # Project documentation (you’re here!)
└── bookstore_db.png               # Visual representation of the schema
```

## Team Roles & Responsibilities

| Team Member     | GitHub Handle                               | Contribution Highlights                                         |
| --------------- | ------------------------------------------- | --------------------------------------------------------------- |
| Margaret Mungai | @MaggieNush (https://github.com/MaggieNush) | ERD design, data modeling, GitHub repo setup, README            |
| Elidy Muriithi  | @Elidy-art (https://github.com/Elidy-art)   | SQL table creation, foreign key relationships, user roles setup |
| Jeff Mbita      | @MbitaJeff (https://github.com/Mbitajeff)   | Testing queries, data population, sample data generation        |

---

## Team Notes

This project was completed as part of a group assignment for hands-on experience with relational databases.
