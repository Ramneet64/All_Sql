

/* Create a Table
Q1. Write a SQL query to create a table with specific columns and constraints. 

Ans. -- Create a table named "Employees" with columns for ID, Name, Age, and Salary.
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY, -- Define a primary key column for unique identification.
    Name VARCHAR(100) NOT NULL, -- Name cannot be null.
    Age INT CHECK (Age > 0),    -- Age must be greater than 0.
    Salary DECIMAL(10, 2)       -- Salary is stored as a decimal with 2 decimal places.
);
——————————————————————————-——————————————————————————-——————————————————————————-——————————————————————————-——————————————————————————-
Add a New Column

Q2. Write a SQL query to add a new column to an existing table.

Ans. -- Add a new column "Department" to the "Employees" table.

ALTER TABLE Employees
ADD Department VARCHAR(50); -- Add a column to store department names.

——————————————————————————-——————————————————————————-——————————————————————————-——————————————————————————-——————————————————————————-
Modify a Column's Data Type

Q3. Write a SQL query to change the data type of an existing column in a table.

Ans. -- Change the data type of the "Salary" column to INTEGER.
ALTER TABLE Employees -- Specify the table to modify.
MODIFY Salary INT; -- Modify the data type of the "Salary" column to INTEGER.
    
——————————————————————————-——————————————————————————-——————————————————————————-——————————————————————————-——————————————————————————-
Drop a Column

Q4. Write a SQL query to remove a column from an existing table.
Ans. -- Remove the "Department" column from the "Employees" table.
ALTER TABLE Employees -- Specify the table to modify.
DROP COLUMN Department; -- Drop the "Department" column.

——————————————————————————-——————————————————————————-——————————————————————————-——————————————————————————-——————————————————————————-
Add a Unique Constraint
Q5 . Write a SQL query to add a unique constraint to a column in an existing table.
Ans. -- Add a unique constraint to the "Name" column to ensure no duplicate names.
ALTER TABLE Employees -- Specify the table to modify.
ADD CONSTRAINT UC_Name UNIQUE (Name); -- Ensure all names are unique.

——————————————————————————-——————————————————————————-——————————————————————————-——————————————————————————-——————————————————————————-
Add a Foreign Key

Q6. Write a SQL query to create a foreign key relationship between two tables.
Ans. -- Create a new table "Departments" and link it to "Employees" using a foreign key.
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY, -- Primary key for the "Departments" table.
    DepartmentName VARCHAR(50)    -- Column to store department names.
);
ALTER TABLE Employees
ADD DepartmentID INT, -- Add a column to reference the "Departments" table.
ADD CONSTRAINT FK_Department FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID);
-- Link Employees.DepartmentID to Departments.DepartmentID using a foreign key.

——————————————————————————-——————————————————————————-——————————————————————————-——————————————————————————-——————————————————————————-
Drop a Table
Q7. Write a SQL query to permanently delete a table and all its data
Ans. -- Delete the "Departments" table permanently.
DROP TABLE Departments; -- Permanently remove the "Departments" table.

——————————————————————————-——————————————————————————-——————————————————————————-——————————————————————————-——————————————————————————-
Truncate a Table
Q8. Write a SQL query to remove all rows from a table while retaining its structure.
Ans. -- Remove all rows from the "Employees" table but keep the table structure.
TRUNCATE TABLE Employees; -- Delete all rows in the "Employees" table.

——————————————————————————-——————————————————————————-——————————————————————————-——————————————————————————-——————————————————————————-
Create an Index
Q9. Write a SQL query to create an index on a column to improve query performance.
Ans.-- Create an index on the "Name" column to improve query performance.
CREATE INDEX idx_Name ON Employees(Name); -- Create an index for faster lookups.
——————————————————————————-——————————————————————————-——————————————————————————-——————————————————————————-——————————————————————————-
Drop an Index
Q10. Write a SQL query to remove an index from a table.
Ans. -- Remove the index "idx_Name" from the "Employees" table.
DROP INDEX idx_Name ON Employees; -- Delete the index on the "Name" column.

——————————————————————————-——————————————————————————-——————————————————————————-——————————————————————————-——————————————————————————-
Rename a Table
Q11. Write a SQL query to rename an existing table.
Ans. -- Rename the "Employees" table to "Staff".
ALTER TABLE Employees RENAME TO Staff; -- Change the table name to "Staff".

——————————————————————————-——————————————————————————-——————————————————————————-——————————————————————————-——————————————————————————-
Add a Default Value
Q12. Write a SQL query to assign a default value to a column in an existing table.
Ans. -- Set a default value of 0 for the "Salary" column.
ALTER TABLE Employees
ALTER COLUMN Salary SET DEFAULT 0; -- Assign a default value of 0 to "Salary".

——————————————————————————-——————————————————————————-——————————————————————————-——————————————————————————-——————————————————————————-
 Remove a Constraint
Q13. Write a SQL query to remove a constraint from an existing table.
Ans. -- Remove the unique constraint "UC_Name" from the "Employees" table.
ALTER TABLE Employees
DROP CONSTRAINT UC_Name; -- Delete the unique constraint on "Name".
——————————————————————————-——————————————————————————-——————————————————————————-——————————————————————————-——————————————————————————-
Create a Schema
Q14. Write a SQL query to create a new schema in the database.
Ans. -- Create a new schema named "HR".
CREATE SCHEMA HR; -- Define a new schema for organizing database objects.

——————————————————————————-——————————————————————————-——————————————————————————-——————————————————————————-——————————————————————————-
Move a Table to a Schema
Q15. Write a SQL query to move a table from one schema to another.
Ans. -- Move the "Employees" table to the "HR" schema.
ALTER SCHEMA HR TRANSFER Employees; -- Transfer the "Employees" table to the "HR" schema.

——————————————————————————-——————————————————————————-——————————————————————————-——————————————————————————-——————————————————————————-
——————————————————————————- */
