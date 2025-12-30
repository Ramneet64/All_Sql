/* 
1. Insert a Single Record

Q1. Write a SQL query to insert a single record into a table.
Ans. -- Insert a new employee record into the "Employees" table.
INSERT INTO Employees (EmployeeID, Name, Age, Salary) -- Specify the columns to insert data into.
VALUES (1, 'Ziynet Safiyyah', 30, 50000); -- Provide values for the specified columns.

-----------------------------------------------------------------------------------------
2. Insert Multiple Records

Q2. Write a SQL query to insert multiple records into a table in a single operation.
Ans.
-- Insert multiple employee records into the "Employees" table.
INSERT INTO Employees (EmployeeID, Name, Age, Salary) -- Specify the columns to insert data into.
VALUES 
    (2, 'Berna Alder', 25, 45000), -- First record.
    (3, 'Khayri Ivo', 28, 52000), -- Second record.
    (4, 'Teppo Abel', 35, 60000); -- Third record.



-----------------------------------------------------------------------------------------
3. Update a Single Record

Q3.Write a SQL query to update a single record in a table based on a specific condition.
Ans. -- Update the salary of an employee with EmployeeID = 1.
UPDATE Employees -- Specify the table to update.
SET Salary = 55000 -- Set the new value for the "Salary" column.
WHERE EmployeeID = 1; -- Apply the update only to the employee with ID 1.



-----------------------------------------------------------------------------------------
4. Update Multiple Records
Q4. Write a SQL query to update multiple records in a table based on a specific condition.
Ans. -- Increase the salary of all employees aged over 30 by 10%.
UPDATE Employees -- Specify the table to update.
SET Salary = Salary * 1.10 -- Increase the salary by 10%.
WHERE Age > 30; -- Apply the update to employees older than 30.
-----------------------------------------------------------------------------------------
5. Delete a Single Records
Q5. Write a SQL query to delete a single record from a table based on a specific condition.
Ans. -- Delete the employee with EmployeeID = 4.
DELETE FROM Employees -- Specify the table to delete from.
WHERE EmployeeID = 4; -- Delete only the employee with ID 4.


-----------------------------------------------------------------------------------------
6. Delete Multiple Records
Q6. Write a SQL query to delete multiple records from a table based on a specific condition.
Ans. -- Delete all employees with a salary less than 50000.
DELETE FROM Employees -- Specify the table to delete from.
WHERE Salary < 50000; -- Delete employees earning less than 50000.

-----------------------------------------------------------------------------------------
7. Insert with Default Values
Q7.Write a SQL query to insert a record into a table with default values for unspecified columns.
Ans. -- Insert a record with default values for unspecified columns.
INSERT INTO Employees (EmployeeID, Name) -- Specify only some columns.
VALUES (5, 'Charlie Davis'); -- Provide values for specified columns; others use defaults.


-----------------------------------------------------------------------------------------
8. Update using Subquery
Q8. Write a SQL query to update records in a table using a subquery to determine the condition.
Ans. -- Update the salary of employees in the same department as EmployeeID = 1.
UPDATE Employees -- Specify the table to update.
SET Salary = Salary + 5000 -- Increase the salary by 5000.
WHERE DepartmentID = (SELECT DepartmentID FROM Employees WHERE EmployeeID = 1);
-- Use a subquery to find the department of EmployeeID = 1.

-----------------------------------------------------------------------------------------
9. Delete using Subquery
Q9. Write a SQL query to delete records from a table using a subquery to determine the condition.
Ans.-- Delete employees who work in the same department as EmployeeID = 2.
DELETE FROM Employees -- Specify the table to delete from.
WHERE DepartmentID = (SELECT DepartmentID FROM Employees WHERE EmployeeID = 2);
-- Use a subquery to find the department of EmployeeID = 2.


-----------------------------------------------------------------------------------------
10. Insert from another Table
Q10.Write a SQL query to copy data from one table into another table.Data Analytics Software
Ans. -- Insert employees from the "OldEmployees" table into the "Employees" table.
INSERT INTO Employees (EmployeeID, Name, Age, Salary) -- Specify the target columns.
SELECT EmployeeID, Name, Age, Salary FROM OldEmployees; -- Copy data from another table.


-----------------------------------------------------------------------------------------
11. Update with CASE Statement
Q11. Write a SQL query to update records in a table using conditional logic with a CASE statement.
Ans.-- Update salaries based on age: increase by 5000 if age > 30, otherwise increase by 2000.
UPDATE Employees -- Specify the table to update.
SET Salary = CASE 
    WHEN Age > 30 THEN Salary + 5000 -- Increase by 5000 if age > 30.
    ELSE Salary + 2000 -- Otherwise, increase by 2000.
END;


-----------------------------------------------------------------------------------------
12. Delete All Records
Q12. Write a SQL query to delete all records from a table.
Ans.-- Delete all records from the "Employees" table.
DELETE FROM Employees; -- Remove all rows without a WHERE clause.


-----------------------------------------------------------------------------------------
13. Insert with Auto-Increment
Q13.Write a SQL query to insert a record into a table where the primary key is auto-generated.Record Insertion Service
Ans. -- Insert a record where EmployeeID is auto-generated.
INSERT INTO Employees (Name, Age, Salary) -- Exclude the auto-increment column.
VALUES ('Eve White', 27, 48000); -- Provide values for other columns.


-----------------------------------------------------------------------------------------
14. Update and Reset a Column
Q14. Write a SQL query to reset the value of a specific column to NULL for all rows in a table.
Ans. -- Reset the "Age" column to NULL for all employees.
UPDATE Employees -- Specify the table to update.
SET Age = NULL; -- Set the "Age" column to NULL for all rows.

-----------------------------------------------------------------------------------------
15. Delete with JOIN
Q15. Write a SQL query to delete records from one table based on a condition derived from a related table using a JOIN.
Ans.-- Delete employees who belong to a department that has been marked as inactive.
DELETE E -- Alias for the "Employees" table.
FROM Employees E
JOIN Departments D ON E.DepartmentID = D.DepartmentID -- Join with the "Departments" table.
WHERE D.IsActive = 0; -- Delete employees in inactive departments.

-----------------------------------------------------------------------------------------

*/