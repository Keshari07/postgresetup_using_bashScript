Create a Database:

sql
Copy code
CREATE DATABASE mydatabase;
Connect to a Database:

bash
Copy code
psql -d mydatabase
List all Databases:

sql
Copy code
\l
List Tables in a Database:

sql
Copy code
\dt
Create a Table:

sql
Copy code
CREATE TABLE mytable (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50)
);
Insert Data into a Table:

sql
Copy code
INSERT INTO mytable (name) VALUES ('John'), ('Alice'), ('Bob');
Select All Rows from a Table:

sql
Copy code
SELECT * FROM mytable;
Select Specific Columns from a Table:

sql
Copy code
SELECT id, name FROM mytable;
Select Rows with a Condition:

sql
Copy code
SELECT * FROM mytable WHERE name = 'John';
Update Data in a Table:

sql
Copy code
UPDATE mytable SET name = 'Johnny' WHERE id = 1;
Delete Data from a Table:

sql
Copy code
DELETE FROM mytable WHERE id = 2;
Count Rows in a Table:

sql
Copy code
SELECT COUNT(*) FROM mytable;
Aggregate Functions (e.g., Sum, Average):

sql
Copy code
SELECT SUM(amount) FROM transactions;
Group Data and Apply Aggregations:

sql
Copy code
SELECT department, AVG(salary) FROM employees GROUP BY department;
Join Tables:

sql
Copy code
SELECT * FROM table1 JOIN table2 ON table1.id = table2.table1_id;
Inner Join:

sql
Copy code
SELECT * FROM table1 INNER JOIN table2 ON table1.id = table2.table1_id;
Left Join:

sql
Copy code
SELECT * FROM table1 LEFT JOIN table2 ON table1.id = table2.table1_id;
Right Join:

sql
Copy code
SELECT * FROM table1 RIGHT JOIN table2 ON table1.id = table2.table1_id;
Full Outer Join:

sql
Copy code
SELECT * FROM table1 FULL OUTER JOIN table2 ON table1.id = table2.table1_id;
Order Results:

sql
Copy code
SELECT * FROM mytable ORDER BY name ASC;
Limit Results:

sql
Copy code
SELECT * FROM mytable LIMIT 10;
Offset Results:

sql
Copy code
SELECT * FROM mytable OFFSET 5;
Combine Limit and Offset:

sql
Copy code
SELECT * FROM mytable LIMIT 5 OFFSET 10;
Alias Columns:

sql
Copy code
SELECT name AS employee_name, age AS employee_age FROM employees;
Case Statements:

sql
Copy code
SELECT name, CASE WHEN age >= 18 THEN 'Adult' ELSE 'Minor' END AS age_category FROM people;
Concatenate Strings:

sql
Copy code
SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM users;
Substring:

sql
Copy code
SELECT SUBSTRING(title FROM 1 FOR 10) AS short_title FROM books;
Date Functions:

sql
Copy code
SELECT CURRENT_DATE;
Date Formatting:

sql
Copy code
SELECT TO_CHAR(CURRENT_DATE, 'YYYY-MM-DD') AS formatted_date;
Create Index:

sql
Copy code
CREATE INDEX idx_name ON mytable (column);
Drop Index:

sql
Copy code
DROP INDEX idx_name;
Create Unique Constraint:

sql
Copy code
ALTER TABLE mytable ADD CONSTRAINT unique_constraint UNIQUE (column);
Drop Constraint:

sql
Copy code
ALTER TABLE mytable DROP CONSTRAINT unique_constraint;
Create Sequence:

sql
Copy code
CREATE SEQUENCE seq_name;
Nextval Function (for Sequences):

sql
Copy code
SELECT NEXTVAL('seq_name');
Reset Sequence:

sql
Copy code
ALTER SEQUENCE seq_name RESTART WITH 1;
Aggregate Functions (e.g., Max, Min):

sql
Copy code
SELECT MAX(salary) FROM employees;
Subquery:

sql
Copy code
SELECT * FROM mytable WHERE id IN (SELECT id FROM othertable);
Union:

sql
Copy code
SELECT * FROM table1 UNION SELECT * FROM table2;
Intersection:

sql
Copy code
SELECT * FROM table1 INTERSECT SELECT * FROM table2;
Except:

sql
Copy code
SELECT * FROM table1 EXCEPT SELECT * FROM table2;
Window Functions:

sql
Copy code
SELECT name, salary, ROW_NUMBER() OVER (ORDER BY salary DESC) AS rank FROM employees;
Backup Database:

bash
Copy code
pg_dump -U postgres -d mydatabase > backup.sql
Restore Database:

bash
Copy code
psql -U postgres -d mydatabase < backup.sql
Show Table Structure:

sql
Copy code
\d mytable
Show Indexes:

sql
Copy code
\di
Show Sequence Information:

sql
Copy code
\ds
Show User Privileges:

sql
Copy code
\du
Explain Query Execution Plan:

sql
Copy code
EXPLAIN SELECT * FROM mytable;
Terminate Database Connection:

sql
Copy code
SELECT pg_terminate_backend(pid) FROM pg_stat_activity WHERE datname = 'mydatabase';
These commands cover a range of common operations in PostgreSQL, from basic CRUD operations to more advanced features like joins, aggregates, and transaction control.





