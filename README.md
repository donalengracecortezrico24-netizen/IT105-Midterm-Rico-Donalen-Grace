# IT 105 – Information Management I
## Midterm Laboratory Portfolio: Inventory System

**Student:** Rico, Donalen Grace C.  
**Course:** IT 105 – Information Management I  
**Date:** April 2026  


## Project Title

**Inventory Management System Database**

A fully normalized relational database designed to manage products, suppliers, customers, and sales transactions for a small to medium-sized retail business.


## System Description

The Inventory System Database tracks and manages:

- **Products** and their categories
- **Suppliers** who provide products
- **Customers** who purchase products
- **Sales transactions** including line items
- **Inventory levels** and reorder points


## Tables Description

| # | Table Name | Description | Records |
|---|------------|-------------|---------|
| 1 | Categories | Product categories | 10 |
| 2 | Suppliers | Vendor information | 10 |
| 3 | Products | Main inventory items | 15 |
| 4 | Customers | Customer information | 10 |
| 5 | Sales | Transaction headers | 10 |
| 6 | SaleItems | Line items per sale | 20 |

### Table Relationships:

- Products → Categories (many-to-one)
- Products → Suppliers (many-to-one)
- Sales → Customers (many-to-one)
- Sales → SaleItems (one-to-many)
- SaleItems → Products (many-to-one)


## Features Implemented

### ✅ Database Design
- 6 normalized tables
- Primary and foreign key constraints
- Referential integrity

### ✅ Normalization
- UNF → 1NF → 2NF → 3NF transformation
- Located in `docs/normalization.md`

### ✅ Data Population
- 10+ records per table
- Realistic sample data

### ✅ SQL Operations
- SELECT, INSERT, UPDATE, DELETE
- JOIN (INNER, LEFT)
- SUBQUERY (WHERE, SELECT, FROM)
- Located in `sql/queries.sql`

### ✅ Indexing
- Created indexes on search columns
- Before/after comparison
- Located in `docs/indexing.md`

### ✅ Documentation
- Complete README file
- Normalization documentation
- Indexing demonstration

## How to Set Up

| Step | Action |
|------|--------|
| 1 | Start MySQL in XAMPP |
| 2 | Open phpMyAdmin |
| 3 | Run `sql/schema.sql` |
| 4 | Run `sql/data.sql` |
| 5 | Run `sql/queries.sql` |

# References

1. MySQL Official Documentation. (2026). *MySQL 8.0 Reference Manual*. Retrieved from https://dev.mysql.com/doc/refman/8.0/en/

2. W3Schools. (2026). *SQL Tutorial*. Retrieved from https://www.w3schools.com/sql/

3. TutorialsPoint. (2026). *DBMS Tutorial*. Retrieved from https://www.tutorialspoint.com/dbms/index.htm

4. TutorialsPoint. (2026). *Database Normalization*. Retrieved from https://www.tutorialspoint.com/dbms/database_normalization.htm

5. MySQL Official Documentation. (2026). *MySQL Indexes*. Retrieved from https://dev.mysql.com/doc/refman/8.0/en/mysql-indexes.html

6. W3Schools. (2026). *SQL CREATE INDEX Statement*. Retrieved from https://www.w3schools.com/sql/sql_create_index.asp

7. GitHub Docs. (2026). *Getting Started with GitHub*. Retrieved from https://docs.github.com/en/get-started

8. Apache Friends. (2026). *XAMPP Installation Guide*. Retrieved from https://www.apachefriends.org/

9. phpMyAdmin Documentation. (2026). *User Guide*. Retrieved from https://www.phpmyadmin.net/docs/

## Reflection: What I Learned

Throughout this midterm portfolio, I learned a lot about database design and management. Creating an Inventory System from scratch taught me how to think about relationships between tables, set up primary and foreign keys, and maintain data integrity. I used to think normalization was just a theoretical concept, but applying UNF to 3NF to my own database made it clear why it reduces redundancy and prevents data anomalies. The indexing exercise was also eye-opening because I saw how MySQL scans all rows without an index, and how creating an index on the CustomerName column changed the EXPLAIN output from "ALL" to "range", meaning fewer rows were scanned. Although my database only has 10 to 20 records per table, I now understand that for real-world databases with millions of records, indexing is essential for performance. I also improved my SQL skills by writing different queries including SELECT, INSERT, UPDATE, DELETE, JOIN, and SUBQUERY. Learning Git and GitHub was challenging at first because I had installation issues, but after fixing them, I appreciated how version control helps track changes and collaborate with others. Overall, this project gave me hands-on experience that I cannot get from just reading textbooks, and I feel more confident in designing and managing databases as a future IT professional.

## Declaration

I declare that I used AI tools only for grammar checking, code clarification, and organizing my file structure. The AI helped me understand certain concepts like indexing and normalization, but all the SQL code, database design decisions, documentation, and personal reflections are based on my own understanding of the lessons from IT 105. Approximately 20% of my work involved AI assistance for language refinement and formatting, while the remaining 80% represents my original intellectual effort. I ran all SQL commands in phpMyAdmin myself, verified the outputs, and made sure everything worked correctly before committing to GitHub. This declaration is made in the spirit of academic honesty and transparency.

**Signed,**  
Rico, Donalen Grace C.  
April 09, 2026