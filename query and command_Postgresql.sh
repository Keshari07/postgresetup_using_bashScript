#!/bin/bash

# Create a Database
sudo -u postgres psql -c "CREATE DATABASE mydatabase;"

# Connect to a Database
psql -d mydatabase

# List all Databases
sudo -u postgres psql -c "\l"

# List Tables in a Database
sudo -u postgres psql -d mydatabase -c "\dt"

# Create a Table
sudo -u postgres psql -d mydatabase -c "CREATE TABLE mytable (id SERIAL PRIMARY KEY, name VARCHAR(50));"

# Insert Data into a Table
sudo -u postgres psql -d mydatabase -c "INSERT INTO mytable (name) VALUES ('John'), ('Alice'), ('Bob');"

# Select All Rows from a Table
sudo -u postgres psql -d mydatabase -c "SELECT * FROM mytable;"

# Select Specific Columns from a Table
sudo -u postgres psql -d mydatabase -c "SELECT id, name FROM mytable;"

# Select Rows with a Condition
sudo -u postgres psql -d mydatabase -c "SELECT * FROM mytable WHERE name = 'John';"

# Update Data in a Table
sudo -u postgres psql -d mydatabase -c "UPDATE mytable SET name = 'Johnny' WHERE id = 1;"

# Delete Data from a Table
sudo -u postgres psql -d mydatabase -c "DELETE FROM mytable WHERE id = 2;"

# Count Rows in a Table
sudo -u postgres psql -d mydatabase -c "SELECT COUNT(*) FROM mytable;"

# Aggregate Functions (e.g., Sum, Average)
sudo -u postgres psql -d mydatabase -c "SELECT SUM(amount) FROM transactions;"

# Group Data and Apply Aggregations
sudo -u postgres psql -d mydatabase -c "SELECT department, AVG(salary) FROM employees GROUP BY department;"

# Join Tables
sudo -u postgres psql -d mydatabase -c "SELECT * FROM table1 JOIN table2 ON table1.id = table2.table1_id;"

# Inner Join
sudo -u postgres psql -d mydatabase -c "SELECT * FROM table1 INNER JOIN table2 ON table1.id = table2.table1_id;"

# Left Join
sudo -u postgres psql -d mydatabase -c "SELECT * FROM table1 LEFT JOIN table2 ON table1.id = table2.table1_id;"

# Right Join
sudo -u postgres psql -d mydatabase -c "SELECT * FROM table1 RIGHT JOIN table2 ON table1.id = table2.table1_id;"

# Full Outer Join
sudo -u postgres psql -d mydatabase -c "SELECT * FROM table1 FULL OUTER JOIN table2 ON table1.id = table2.table1_id;"

# Order Results
sudo -u postgres psql -d mydatabase -c "SELECT * FROM mytable ORDER BY name ASC;"

# Limit Results
sudo -u postgres psql -d mydatabase -c "SELECT * FROM mytable LIMIT 10;"

# Offset Results
sudo -u postgres psql -d mydatabase -c "SELECT * FROM mytable OFFSET 5;"

# Combine Limit and Offset
sudo -u postgres psql -d mydatabase -c "SELECT * FROM mytable LIMIT 5 OFFSET 10;"

# Alias Columns
sudo -u postgres psql -d mydatabase -c "SELECT name AS employee_name, age AS employee_age FROM employees;"

# Case Statements
sudo -u postgres psql -d mydatabase -c "SELECT name, CASE WHEN age >= 18 THEN 'Adult' ELSE 'Minor' END AS age_category FROM people;"

# Concatenate Strings
sudo -u postgres psql -d mydatabase -c "SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM users;"

# Substring
sudo -u postgres psql -d mydatabase -c "SELECT SUBSTRING(title FROM 1 FOR 10) AS short_title FROM books;"

# Date Functions
sudo -u postgres psql -d mydatabase -c "SELECT CURRENT_DATE;"

# Date Formatting
sudo -u postgres psql -d mydatabase -c "SELECT TO_CHAR(CURRENT_DATE, 'YYYY-MM-DD') AS formatted_date;"

# Create Index
sudo -u postgres psql -d mydatabase -c "CREATE INDEX idx_name ON mytable (column);"

# Drop Index
sudo -u postgres psql -d mydatabase -c "DROP INDEX idx_name;"

# Create Unique Constraint
sudo -u postgres psql -d mydatabase -c "ALTER TABLE mytable ADD CONSTRAINT unique_constraint UNIQUE (column);"

# Drop Constraint
sudo -u postgres psql -d mydatabase -c "ALTER TABLE mytable DROP CONSTRAINT unique_constraint;"

# Create Sequence
sudo -u postgres psql -d mydatabase -c "CREATE SEQUENCE seq_name;"

# Nextval Function (for Sequences)
sudo -u postgres psql -d mydatabase -c "SELECT NEXTVAL('seq_name');"

# Reset Sequence
sudo -u postgres psql -d mydatabase -c "ALTER SEQUENCE seq_name RESTART WITH 1;"

# Aggregate Functions (e.g., Max, Min)
sudo -u postgres psql -d mydatabase -c "SELECT MAX(salary) FROM employees;"

# Subquery
sudo -u postgres psql -d mydatabase -c "SELECT * FROM mytable WHERE id IN (SELECT id FROM othertable);"

# Union
sudo -u postgres psql -d mydatabase -c "SELECT * FROM table1 UNION SELECT * FROM table2;"

# Intersection
sudo -u postgres psql -d mydatabase -c "SELECT * FROM table1 INTERSECT SELECT * FROM table2;"

# Except
sudo -u postgres psql -d mydatabase -c "SELECT * FROM table1 EXCEPT SELECT * FROM table2;"

# Window Functions
sudo -u postgres psql -d mydatabase -c "SELECT name, salary, ROW_NUMBER() OVER (ORDER BY salary DESC) AS rank FROM employees;"

# Backup Database
pg_dump -U postgres -d mydatabase > backup.sql

# Restore Database
psql -U postgres -d mydatabase < backup.sql

# Show Table Structure
sudo -u postgres psql -d mydatabase -c "\d mytable"

# Show Indexes
sudo -u postgres psql -d mydatabase -c "\di"

# Show Sequence Information
sudo -u postgres psql -d mydatabase -c "\ds"

# Show User Privileges
sudo -u postgres psql -d mydatabase -c "\du"

# Explain Query Execution Plan
sudo -u postgres psql -d mydatabase -c "EXPLAIN SELECT * FROM mytable;"

# Terminate Database Connection
sudo -u postgres psql -d mydatabase -c "SELECT pg_terminate_backend(pid) FROM pg_stat_activity WHERE datname = 'mydatabase';"
