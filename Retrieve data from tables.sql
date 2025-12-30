/*
1. Display All Salespeople
Q1. Write a SQL statement that displays all the information about all salespeople.
Sample table: salesman

 salesman_id |    name    |   city   | commission 
-------------+------------+----------+------------
        5001 | James Hoog | New York |       0.15
        5002 | Nail Knite | Paris    |       0.13
        5005 | Pit Alex   | London   |       0.11
        5006 | Mc Lyon    | Paris    |       0.14
        5007 | Paul Adam  | Rome     |       0.13
        5003 | Lauson Hen | San Jose |       0.12
        
Ans. -- This query selects all columns from the 'salesman' table.
SELECT * 
-- Specifies the table from which to retrieve the data (in this case, 'salesman').
FROM salesman;
Output of the Query:

salesman_id	name		city		commission
5001		James Hoog	New York	0.15
5002		Nail Knite	Paris		0.13
5005		Pit Alex	London		0.11
5006		Mc Lyon		Paris		0.14
5007		Paul Adam	Rome		0.13
5003		Lauson Hen	San Jose	0.12
----------------------------------------------------------------------------------------------
2. Display a Custom String
Q2. Write a query to display a string "This is SQL Exercise, Practice and Solution".
Ans. -- This query selects a string literal as a single column result.
SELECT "This is SQL Exercise, Practice and Solution";



----------------------------------------------------------------------------------------------
3. Display Three Numbers
Q3. Write a SQL query to display three numbers in three columns.
-- This query selects three numeric literals (5, 10, and 15) as separate columns.
SELECT 5, 10, 15;
 Output: 15

----------------------------------------------------------------------------------------------
4. Sum of Two Numbers
Q4. Write a SQL query to display the sum of two numbers 10 and 15 from the RDBMS server.
Ans.-- This query performs addition of two numeric literals (10 and 15).
SELECT 10 + 15;

Output: 25

----------------------------------------------------------------------------------------------
5. Arithmetic Expression Result
Q5. Write an SQL query to display the result of an arithmetic expression.
Ans. -- This query performs a series of arithmetic operations: addition, subtraction, and multiplication.
SELECT 10 + 15 - 5 * 2;

OP. 15
----------------------------------------------------------------------------------------------
6. Specific Columns of Salespeople
Q6.Write a SQL statement to display specific columns such as names and commissions for all salespeople.
Sample table: salesman
 salesman_id |    name    |   city   | commission 
-------------+------------+----------+------------
        5001 | James Hoog | New York |       0.15
        5002 | Nail Knite | Paris    |       0.13
        5005 | Pit Alex   | London   |       0.11
        5006 | Mc Lyon    | Paris    |       0.14
        5007 | Paul Adam  | Rome     |       0.13
        5003 | Lauson Hen | San Jose |       0.12
Ans. -- This query selects specific columns 'name' and 'commission' from the 'salesman' table.
SELECT name, commission
-- Specifies the table from which to retrieve the data (in this case, 'salesman').
FROM salesman;

Output of the Query:

name		commission
James Hoog	0.15
Nail Knite	0.13
Pit Alex	0.11
Mc Lyon		0.14
Paul Adam	0.13
Lauson Hen	0.12

----------------------------------------------------------------------------------------------
7. Custom Column Order in Orders
Q7. Write a query to display the columns in a specific order, such as order date, salesman ID, order number, and purchase amount for all orders.

Sample table : orders
ord_no      purch_amt   ord_date    customer_id  salesman_id
----------  ----------  ----------  -----------  -----------
70001       150.5       2012-10-05  3005         5002
70009       270.65      2012-09-10  3001         5005
70002       65.26       2012-10-05  3002         5001
70004       110.5       2012-08-17  3009         5003
70007       948.5       2012-09-10  3005         5002
70005       2400.6      2012-07-27  3007         5001
70008       5760        2012-09-10  3002         5001
70010       1983.43     2012-10-10  3004         5006
70003       2480.4      2012-10-10  3009         5003
70012       250.45      2012-06-27  3008         5002
70011       75.29       2012-08-17  3003         5007
70013       3045.6      2012-04-25  3002         5001
Ans.-- This query selects specific columns 'ord_date', 'salesman_id', 'ord_no', and 'purch_amt' from the 'orders' table.
SELECT ord_date, salesman_id, ord_no, purch_amt
-- Specifies the table from which to retrieve the data (in this case, 'orders').
FROM orders;
Output of the Query:

ord_date	salesman_id	ord_no	purch_amt
2012-09-10	5005		70009	270.65
2012-10-05	5001		70002	65.26
2012-08-17	5003		70004	110.50
2012-07-27	5001		70005	2400.60
2012-09-10	5001		70008	5760.00
2012-10-10	5006		70010	1983.43
2012-10-10	5003		70003	2480.40
2012-08-17	5007		70011	75.29
2012-04-25	5001		70013	3045.60
2012-10-05	5002		70001	150.50
2012-09-10	5002		70007	948.50
2012-06-27	5002		70012	250.45

----------------------------------------------------------------------------------------------
8. Unique Salespeople IDs
Q8. From the following table, write a SQL query to identify the unique salespeople ID. Return salesman_id.

Sample table: orders

ord_no      purch_amt   ord_date    customer_id  salesman_id
----------  ----------  ----------  -----------  -----------
70001       150.5       2012-10-05  3005         5002
70009       270.65      2012-09-10  3001         5005
70002       65.26       2012-10-05  3002         5001
70004       110.5       2012-08-17  3009         5003
70007       948.5       2012-09-10  3005         5002
70005       2400.6      2012-07-27  3007         5001
70008       5760        2012-09-10  3002         5001
70010       1983.43     2012-10-10  3004         5006
70003       2480.4      2012-10-10  3009         5003
70012       250.45      2012-06-27  3008         5002
70011       75.29       2012-08-17  3003         5007
70013       3045.6      2012-04-25  3002         5001
Ans.-- This query selects unique/distinct values from the 'salesman_id' column in the 'orders' table.
SELECT DISTINCT salesman_id
-- Specifies the table from which to retrieve the data (in this case, 'orders').
FROM orders;
Ans. Output of the Query:

salesman_id
5002
5003
5006
5001
5005
5007



----------------------------------------------------------------------------------------------
9. Salespeople in Paris
Q9 From the following table, write a SQL query to locate salespeople who live in the city of 'Paris'. Return salesperson's name, city. 

Sample table: salesman

 salesman_id |    name    |   city   | commission 
-------------+------------+----------+------------
        5001 | James Hoog | New York |       0.15
        5002 | Nail Knite | Paris    |       0.13
        5005 | Pit Alex   | London   |       0.11
        5006 | Mc Lyon    | Paris    |       0.14
        5007 | Paul Adam  | Rome     |       0.13
        5003 | Lauson Hen | San Jose |       0.12

Ans.-- This query selects specific columns 'name' and 'city' from the 'salesman' table.
SELECT name, city
-- Specifies the table from which to retrieve the data (in this case, 'salesman').
FROM salesman
-- Filters the rows to only include those where the 'city' column has the value 'Paris'.
WHERE city = 'Paris';

Output of the Query:

name		city
Nail Knite	Paris
Mc Lyon		Paris

----------------------------------------------------------------------------------------------
10. Customers with Grade 200
Q10. From the following table, write a SQL query to find customers whose grade is 200. Return customer_id, cust_name, city, grade, salesman_id.

Sample table: customer

 customer_id |   cust_name    |    city    | grade | salesman_id 
-------------+----------------+------------+-------+-------------
        3002 | Nick Rimando   | New York   |   100 |        5001
        3007 | Brad Davis     | New York   |   200 |        5001
        3005 | Graham Zusi    | California |   200 |        5002
        3008 | Julian Green   | London     |   300 |        5002
        3004 | Fabian Johnson | Paris      |   300 |        5006
        3009 | Geoff Cameron  | Berlin     |   100 |        5003
        3003 | Jozy Altidor   | Moscow     |   200 |        5007
        3001 | Brad Guzan     | London     |       |        5005
        
 Ans. -- This query selects all columns from the 'customer' table.
SELECT *
-- Specifies the table from which to retrieve the data (in this case, 'customer').
FROM customer
-- Filters the rows to only include those where the 'grade' column has the value 200.
WHERE grade = 200;
  
Output of the Query:

customer_id	cust_name	 city	    grade	salesman_id
3007		Brad Davis	New York	200		5001
3005		Graham Zusi	California	200		5002
3003		Jozy Altidor    Moscow		200		5007

----------------------------------------------------------------------------------------------
11. Orders by Salesperson 5001
Q11. From the following table, write a SQL query to find orders that are delivered by a salesperson with ID. 5001. Return ord_no, ord_date, purch_amt.

Sample table: orders

ord_no      purch_amt   ord_date    customer_id  salesman_id
----------  ----------  ----------  -----------  -----------
70001       150.5       2012-10-05  3005         5002
70009       270.65      2012-09-10  3001         5005
70002       65.26       2012-10-05  3002         5001
70004       110.5       2012-08-17  3009         5003
70007       948.5       2012-09-10  3005         5002
70005       2400.6      2012-07-27  3007         5001
70008       5760        2012-09-10  3002         5001
70010       1983.43     2012-10-10  3004         5006
70003       2480.4      2012-10-10  3009         5003
70012       250.45      2012-06-27  3008         5002
70011       75.29       2012-08-17  3003         5007
70013       3045.6      2012-04-25  3002         5001

Ans. 
-- This query selects specific columns 'ord_no', 'ord_date', and 'purch_amt' from the 'orders' table.
SELECT ord_no, ord_date, purch_amt
-- Specifies the table from which to retrieve the data (in this case, 'orders').
FROM orders
-- Filters the rows to only include those where the 'salesman_id' column has the value 5001.
WHERE salesman_id = 5001;

Output of the Query:

ord_no	ord_date	purch_amt
70002	2012-10-05	65.26
70005	2012-07-27	2400.60
70008	2012-09-10	5760.00
70013	2012-04-25	3045.60

----------------------------------------------------------------------------------------------
12. Nobel Winner of 1970
Q12. From the following table, write a SQL query to find the Nobel Prize winner(s) for the year 1970. Return year, subject and winner.

Sample table : nobel_win

YEAR SUBJECT                   WINNER                                        COUNTRY                CATEGORY
---- ------------------------- --------------------------------------------- ------------------------- ------------
1970 Physics                   Hannes Alfven                                 Sweden                 Scientist
1970 Physics                   Louis Neel                                    France                 Scientist
1970 Chemistry                 Luis Federico Leloir                          France                 Scientist
1970 Physiology                Ulf von Euler                                 Sweden                 Scientist
1970 Physiology                Bernard Katz                                  Germany                Scientist
1970 Literature                Aleksandr Solzhenitsyn                        Russia                 Linguist
1970 Economics                 Paul Samuelson                                USA                    Economist
1970 Physiology                Julius Axelrod                                USA                    Scientist
1971 Physics                   Dennis Gabor                                  Hungary                Scientist
1971 Chemistry                 Gerhard Herzberg                              Germany                Scientist
1971 Peace                     Willy Brandt                                  Germany                Chancellor
1971 Literature                Pablo Neruda                                  Chile                  Linguist
1971 Economics                 Simon Kuznets                                 Russia                 Economist
1978 Peace                     Anwar al-Sadat                                Egypt                  President
1978 Peace                     Menachem Begin                                Israel                 Prime Minister
1987 Chemistry                 Donald J. Cram                                USA                    Scientist
1987 Chemistry                 Jean-Marie Lehn                               France                 Scientist
1987 Physiology                Susumu Tonegawa                               Japan                  Scientist
1994 Economics                 Reinhard Selten                               Germany                Economist
1994 Peace                     Yitzhak Rabin                                 Israel                 Prime Minister
1987 Physics                   Johannes Georg Bednorz                        Germany                Scientist
1987 Literature                Joseph Brodsky                                Russia                 Linguist
1987 Economics                 Robert Solow                                  USA                    Economist
1994 Literature                Kenzaburo Oe                                  Japan                  Linguist

Ans. -- This query selects specific columns 'year', 'subject', and 'winner' from the 'nobel_win' table.
SELECT year, subject, winner
-- Specifies the table from which to retrieve the data (in this case, 'nobel_win').
FROM nobel_win
-- Filters the rows to only include those where the 'year' column has the value 1970.
WHERE year = 1970;

Output of the Query:

year	subject		winner
1970	Physics		Hannes Alfven
1970	Physics		Louis Neel
1970	Chemistry	Luis Federico Leloir
1970	Physiology	Julius Axelrod
1970	Physiology	Ulf von Euler
1970	Physiology	Bernard Katz
1970	Literature	Aleksandr Solzhenitsyn
1970	Economics	Paul Samuelson

----------------------------------------------------------------------------------------------
13. Literature Winner 1971
Q13. From the following table, write a SQL query to find the Nobel Prize winner in ‘Literature’ for 1971. Return winner.

Sample table: nobel_win

Ans. -- This query selects the 'winner' column from the 'nobel_win' table.
SELECT winner
-- Specifies the table from which to retrieve the data (in this case, 'nobel_win').
FROM nobel_win
-- Filters the rows to only include those where the 'year' column has the value 1971
-- and the 'subject' column has the value 'Literature'.
WHERE year = 1971
  AND subject = 'Literature';

Output of the Query:

winner
Pablo Neruda

----------------------------------------------------------------------------------------------
14. Locate Dennis Gabor
Q14 From the following table, write a SQL query to locate the Nobel Prize winner ‘Dennis Gabor'. Return year, subject.

Sample table: nobel_win

Ans.-- This query selects the 'year' and 'subject' columns from the 'nobel_win' table.
SELECT year, subject
-- Specifies the table from which to retrieve the data (in this case, 'nobel_win').
FROM nobel_win
-- Filters the rows to only include those where the 'winner' column has the value 'Dennis Gabor'.
WHERE winner = 'Dennis Gabor';

Output of the Query:

year	subject
1971	Physics
----------------------------------------------------------------------------------------------
15. Physics Winners Since 1950
Q15 From the following table, write a SQL query to find the Nobel Prize winners in the field of ‘Physics’ since 1950. Return winner.

Sample table: nobel_win

Ans. -- This query selects the 'winner' column from the 'nobel_win' table.
SELECT winner
-- Specifies the table from which to retrieve the data (in this case, 'nobel_win').
FROM nobel_win
-- Filters the rows to only include those where the 'year' column has a value greater than or equal to 1950
-- and the 'subject' column has the value 'Physics'.
WHERE year >= 1950
  AND subject = 'Physics';

Output of the Query:

winner
Hannes Alfven
Louis Neel
Dennis Gabor
Johannes Georg Bednorz

----------------------------------------------------------------------------------------------
16. Chemistry Winners (1965-1975)
Q16 . From the following table, write a SQL query to find the Nobel Prize winners in ‘Chemistry’ between the years 1965 and 1975. Begin and end values are included. Return year, subject, winner, and country.

Sample table: nobel_win

Ans.-- This query selects the 'year', 'subject', 'winner', and 'country' columns from the 'nobel_win' table.
SELECT year, subject, winner, country
-- Specifies the table from which to retrieve the data (in this case, 'nobel_win').
FROM nobel_win	
-- Filters the rows to only include those where the 'subject' column has the value 'Chemistry'
-- and the 'year' column has a value between 1965 and 1975 (inclusive).
WHERE subject = 'Chemistry'
  AND year >= 1965 AND year <= 1975;

Output of the Query:

year	subject		winner		 	country
1970	Chemistry	Luis Federico Leloir	France
1971	Chemistry	Gerhard Herzberg	Germany


----------------------------------------------------------------------------------------------
17. Prime Ministers After 1972
Q17. Write a SQL query to display all details of the Prime Ministerial winners after 1972 of Menachem Begin and Yitzhak Rabin.

Sample table: nobel_win
Ans
-- This query selects all columns from the 'nobel_win' table.
SELECT *
-- Specifies the table from which to retrieve the data (in this case, 'nobel_win').
FROM nobel_win
-- Filters the rows to only include those where the 'year' column has a value greater than 1972
-- and the 'winner' column has values 'Menachem Begin' or 'Yitzhak Rabin'.
WHERE year > 1972
  AND winner IN ('Menachem Begin', 'Yitzhak Rabin');

Output of the Query:

year	subject	winner		country	category
1978	Peace	Menachem Begin	Israel	Prime Minister
1994	Peace	Yitzhak Rabin	Israel	Prime Minister



----------------------------------------------------------------------------------------------
18. Winners with First Name Louis
Q18 .From the following table, write a SQL query to retrieve the details of the winners whose first names match with the string ‘Louis’. Return year, subject, winner, country, and category.

Sample table: nobel_win

Ans.-- This query selects all columns from the 'nobel_win' table.
SELECT *
-- Specifies the table from which to retrieve the data (in this case, 'nobel_win').
FROM nobel_win
-- Filters the rows to only include those where the 'winner' column starts with 'Louis '.
WHERE winner LIKE 'Louis %';

Output of the Query:

year	subject	winner	country	category
1970	Physics	Louis Neel	France	Scientist


----------------------------------------------------------------------------------------------
19. Combine Winners (Physics 1970 & Economics 1971)
Q19 From the following table, write a SQL query that combines the winners in Physics, 1970 and in Economics, 1971. Return year, subject, winner, country, and category. Financial software

Sample table: nobel_win
Ans.-- This query selects all columns from the 'nobel_win' table.
SELECT *
-- Specifies the table from which to retrieve the data (in this case, 'nobel_win').
FROM nobel_win
-- Combines the results of two SELECT statements using the UNION operator.
-- The first SELECT statement retrieves rows where the 'subject' is 'Physics' and the 'year' is 1970.
WHERE (subject = 'Physics' AND year = 1970)
-- The UNION operator combines the results of the first SELECT statement with the results of the second SELECT statement.
UNION
-- The second SELECT statement retrieves rows where the 'subject' is 'Economics' and the 'year' is 1971.
(SELECT * FROM nobel_win WHERE (subject = 'Economics' AND year = 1971));

Output of the Query:

year	subject		winner		country	  category
1970	Physics		Hannes Alfven	Sweden	 Scientist
1970	Physics		Louis Neel	France	 Scientist
1971	Economics	Simon Kuznets	Russia	 Economist


----------------------------------------------------------------------------------------------
20. 1970 Winners Excluding Physiology & Economics
Q20 . From the following table, write a SQL query to find the Nobel Prize winners in 1970 excluding the subjects of Physiology and Economics. Return year, subject, winner, country, and category.Financial software

Sample table: nobel_win
Ans. -- This query selects all columns from the 'nobel_win' table.
SELECT *
-- Specifies the table from which to retrieve the data (in this case, 'nobel_win').
FROM nobel_win
-- Filters the rows to only include those where the 'year' column has the value 1970
-- and the 'subject' column is not 'Physiology' or 'Economics'.
WHERE year = 1970
  AND subject NOT IN ('Physiology', 'Economics');

Output of the Query:

year   subject	  winner	        country	    category
1970   Physics	  Hannes Alfven         Sweden	    Scientist
1970   Physics	  Louis  Neel	        France	    Scientist
1970   Chemistry  Luis Federico Leloir  France	    Scientist
1970   Literature Aleksandr Solzhenitsyn Russia     Linguist

----------------------------------------------------------------------------------------------
21. Physiology Before 1971 & Peace After 1974
Q21. From the following table, write a SQL query to combine the winners in 'Physiology' before 1971 and winners in 'Peace' on or after 1974. Return year, subject, winner, country, and category.

Sample table: nobel_win
Ans. -- This query selects all columns from the 'nobel_win' table.
SELECT *
-- Specifies the table from which to retrieve the data (in this case, 'nobel_win').
FROM nobel_win
-- Combines the results of two SELECT statements using the UNION operator.
-- The first SELECT statement retrieves rows where the 'subject' is 'Physiology' and the 'year' is less than 1971.
WHERE (subject = 'Physiology' AND year < 1971)
-- The UNION operator combines the results of the first SELECT statement with the results of the second SELECT statement.
UNION
-- The second SELECT statement retrieves rows where the 'subject' is 'Peace' and the 'year' is greater than or equal to 1974.
(SELECT * FROM nobel_win WHERE (subject = 'Peace' AND year >= 1974));

Output of the Query:

year	subject		winner		country	category
1970	Physiology	Bernard Katz	Germany	Scientist
1970	Physiology	Julius Axelrod	USA	Scientist
1970	Physiology	Ulf von Euler	Sweden	Scientist
1978	Peace		Anwar al-Sadat	Egypt	President
1978	Peace		Menachem Begin	Israel	Prime Minister
1994	Peace		Yitzhak Rabin	Israel	Prime Minister

----------------------------------------------------------------------------------------------
22. Details of Johannes Georg Bednorz
Q22. From the following table, write a SQL query to find the details of the Nobel Prize winner 'Johannes Georg Bednorz'. Return year, subject, winner, country, and category.

Sample table : nobel_win
Ans. -- This query selects all columns from the 'nobel_win' table.
SELECT *
-- Specifies the table from which to retrieve the data (in this case, 'nobel_win').
FROM nobel_win
-- Filters the rows to only include those where the 'winner' column has the value 'Johannes Georg Bednorz'.
WHERE winner = 'Johannes Georg Bednorz';

Output of the Query:

year	subject	winner			country	  category
1987	Physics	Johannes Georg Bednorz	Germany	Scientist

----------------------------------------------------------------------------------------------
23. Winners Excluding Subjects Starting with P
Q23. From the following table, write a SQL query to find Nobel Prize winners for the subject that does not begin with the letter 'P'. Return year, subject, winner, country, and category. Order the result by year, descending and winner in descending.  

Sample table: nobel_win
Ans.-- This query selects all columns from the 'nobel_win' table.
SELECT *
-- Specifies the table from which to retrieve the data (in this case, 'nobel_win').
FROM nobel_win
-- Filters the rows to only include those where the 'subject' column does not start with 'P'.
WHERE subject NOT LIKE 'P%'
-- Orders the result set first by 'year' in descending order and then by 'winner' in ascending order.
ORDER BY year DESC, winner;

Output of the Query:

year	subject	   winner			country	   	category
1994	Literature Kenzaburo Oe	      		Japan	  	Linguist
1994	Economics  Reinhard Selten		Germany	  	Economist
1987	Chemistry  Donald J. Cram		USA		Scientist
1987	Chemistry  Jean-Marie Lehn		France	  	Scientist
1987	Literature Joseph Brodsky		Russia	  	Linguist
1987	Economics  Robert Solow			USA		Economist
1971	Chemistry  Gerhard Herzberg    		Germany 	Scientist
1971	Literature Pablo Neruda			Chile	  	Linguist
1971	Economics  Simon Kuznets		Russia	  	Economist
1970	Literature Aleksandr Solzhenitsyn 	Russia 		Linguist
1970	Chemistry  Luis Federico Leloir 	 France		Scientist
1970	Economics  Paul Samuelson		USA		


----------------------------------------------------------------------------------------------
24. Ordered 1970 Nobel Prize Winners
Q 24 From the following table, write a SQL query to find the details of 1970 Nobel Prize winners. Order the results by subject, ascending except for 'Chemistry' and ‘Economics’ which will come at the end of the result set. Return year, subject, winner, country, and category.Financial software

Sample table: nobel_win

Ans -- This query selects all columns from the 'nobel_win' table.
SELECT *
-- Specifies the table from which to retrieve the data (in this case, 'nobel_win').
FROM nobel_win
-- Filters the rows to only include those where the 'year' column has the value 1970.
WHERE year = 1970
-- Orders the result set based on multiple criteria.
ORDER BY
  -- The CASE statement assigns a priority (1 or 0) based on the 'subject' column.
  CASE
    WHEN subject IN ('Economics', 'Chemistry') THEN 1
    ELSE 0
  END ASC,
  -- Orders the result set by 'subject' in ascending order.
  subject,
  -- Orders the result set by 'winner' in ascending order.
  winner;
Output of the Query:

year	subject		winner				country		category
1970	Literature	Aleksandr Solzhenitsyn		Russia		Linguist
1970	Physics		Hannes Alfven			Sweden		Scientist
1970	Physics		Louis Neel			France		Scientist
1970	Physiology	Bernard Katz			Germany		Scientist
1970	Physiology	Julius Axelrod			USA		Scientist
1970	Physiology	Ulf von Euler			Sweden		Scientist
1970	Chemistry	Luis Federico Leloir		France		Scientist


----------------------------------------------------------------------------------------------
25. Products in Price Range Rs.200-600
Q25 From the following table, write a SQL query to select a range of products whose price is in the range Rs.200 to Rs.600. Begin and end values are included. Return pro_id, pro_name, pro_price, and pro_com.

Sample table: item_mast

 PRO_ID PRO_NAME                       PRO_PRICE    PRO_COM
------- ------------------------- -------------- ----------
    101 Mother Board                    3200.00         15
    102 Key Board                        450.00         16
    103 ZIP drive                        250.00         14
    104 Speaker                          550.00         16
    105 Monitor                         5000.00         11
    106 DVD drive                        900.00         12
    107 CD drive                         800.00         12
    108 Printer                         2600.00         13
    109 Refill cartridge                 350.00         13
    110 Mouse                            250.00         12
    
    Ans. -- This query selects all columns from the 'item_mast' table.
SELECT *
-- Specifies the table from which to retrieve the data (in this case, 'item_mast').
FROM item_mast
-- Filters the rows to only include those where the 'pro_price' column is between 200 and 600 (inclusive).
WHERE pro_price BETWEEN 200 AND 600;

Output of the Query:

pro_id		pro_name	pro_price	pro_com
102		Key Board	450.00		16
103		ZIP drive	250.00		14
104		Speaker		550.00		16
109		Refill cartridge 350.00		13
110		Mouse		250.00		12


----------------------------------------------------------------------------------------------
26. Average Price for Manufacturer Code 16
Q26 From the following table, write a SQL query to calculate the average price for a manufacturer code of 16. Return avg.

Sample table: item_mast
ans. -- This query calculates the average value of the 'pro_price' column from the 'item_mast' table.
SELECT AVG(pro_price)
-- Specifies the table from which to retrieve the data (in this case, 'item_mast').
FROM item_mast
-- Filters the rows to only include those where the 'pro_com' column has the value 16.
WHERE pro_com = 16;

Output of the Query:

avg
500.0000000000000000


----------------------------------------------------------------------------------------------
27. Display Item Name and Price
Q27 From the following table, write a SQL query to display the pro_name as 'Item Name' and pro_priceas 'Price in Rs.'

Sample table : item_mast
ans. -- This query selects specific columns and renames them for better readability.
-- It renames the 'pro_name' column to "Item Name" and the 'pro_price' column to "Price in Rs."
SELECT pro_name as "Item Name", pro_price AS "Price in Rs."
-- Specifies the table from which to retrieve the data (in this case, 'item_mast').
FROM item_mast;

Output of the Query:

Item Name	Price in Rs.
Mother Board	3200.00
Key Board	450.00
ZIP drive	250.00
Speaker	550.00
Monitor	5000.00
DVD drive	900.00
CD drive	800.00
Printer	2600.00




----------------------------------------------------------------------------------------------
28. Items with Price >= $250
Q28 Items with Price >= $250

From the following table, write a SQL query to find the items whose prices are higher than or equal to $250. Order the result by product price in descending, then product name in ascending. Return pro_name and pro_price.

Sample table: item_mast

Ans. -- This query selects specific columns 'pro_name' and 'pro_price' from the 'item_mast' table.
SELECT pro_name, pro_price
-- Specifies the table from which to retrieve the data (in this case, 'item_mast').
FROM item_mast
-- Filters the rows to only include those where the 'pro_price' column is greater than or equal to 250.
WHERE pro_price >= 250
-- Orders the result set first by 'pro_price' in descending order and then by 'pro_name' in ascending order.
ORDER BY pro_price DESC, pro_name;

Output of the Query:

pro_name	   pro_price
Monitor	        5000.00
Mother Board	3200.00
Printer	        2600.00
DVD drive	     900.00
CD drive	     800.00
Speaker	         550.00


----------------------------------------------------------------------------------------------
29. Average Price per Company
Q29 From the following table, write a SQL query to calculate average price of the items for each company. Return average price and company code.

Sample table: item_mast
Ans. -- This query calculates the average value of the 'pro_price' column for each distinct value of 'pro_com'.
SELECT AVG(pro_price), pro_com
-- Specifies the table from which to retrieve the data (in this case, 'item_mast').
FROM item_mast
-- Groups the result set by the 'pro_com' column.
GROUP BY pro_com;

Output of the Query:

avg					pro_com
250.0000000000000000			14
650.0000000000000000			12
3200.0000000000000000			15


----------------------------------------------------------------------------------------------
30. Cheapest Item
Q30 From the following table, write a SQL query to find the cheapest item(s). Return pro_name and, pro_price.

Sample table: item_mast
Ans -- This query selects specific columns 'pro_name' and 'pro_price' from the 'item_mast' table.
SELECT pro_name, pro_price
-- Specifies the table from which to retrieve the data (in this case, 'item_mast').
FROM item_mast
-- Filters the rows to only include those where the 'pro_price' column is equal to the minimum 'pro_price'.
WHERE pro_price = (SELECT MIN(pro_price) FROM item_mast);

Output of the Query:

pro_name	pro_price
ZIP drive	250.00
Mouse	    250.00

----------------------------------------------------------------------------------------------
31. Unique Employee Last Names

Q31. From the following table, write a SQL query to find the unique last name of all employees. Return emp_lname.

Sample table: emp_details

 EMP_IDNO EMP_FNAME       EMP_LNAME         EMP_DEPT
--------- --------------- --------------- ----------
   127323 Michale         Robbin                  57
   526689 Carlos          Snares                  63
   843795 Enric           Dosio                   57
   328717 Jhon            Snares                  63
   444527 Joseph          Dosni                   47
   659831 Zanifer         Emily                   47
   847674 Kuleswar        Sitaraman               57
   748681 Henrey          Gabriel                 47
   555935 Alex            Manuel                  57
   539569 George          Mardy                   27
   733843 Mario           Saule                   63
   631548 Alan            Snappy                  27
   839139 Maria           Foster                  57
   
   Ans.-- This query selects distinct values from the 'emp_lname' column of the 'emp_details' table.
SELECT DISTINCT emp_lname
-- Specifies the table from which to retrieve the data (in this case, 'emp_details').
FROM emp_details;
Output of the Query:

emp_lname
Saule
Robbin
Sitaraman
Mardy


----------------------------------------------------------------------------------------------
32. Employees with Last Name Snares
Q32. From the following table, write a SQL query to find the details of employees whose last name is 'Snares'. Return emp_idno, emp_fname, emp_lname, and emp_dept.

Sample table: emp_details
ans. -- This query selects all columns from the 'emp_details' table.
SELECT *
-- Specifies the table from which to retrieve the data (in this case, 'emp_details').
FROM emp_details
-- Filters the rows to only include those where the 'emp_lname' column has the value 'Snares'.
WHERE emp_lname = 'Snares';

Output of the Query:

emp_idno	emp_fname	emp_lname	emp_dept
526689		Carlos		Snares		63


----------------------------------------------------------------------------------------------
33. Employees in Department 57
Q33. From the following table, write a SQL query to retrieve the details of the employees who work in the department 57. Return emp_idno, emp_fname, emp_lname and emp_dept.

Sample table: emp_details

Ans. -- This query selects all columns from the 'emp_details' table.
SELECT *
-- Specifies the table from which to retrieve the data (in this case, 'emp_details').
FROM emp_details
-- Filters the rows to only include those where the 'emp_dept' column has the value 57.
WHERE emp_dept = 57;

Output of the Query:

emp_idno	emp_fname	emp_lname	emp_dept
839139		Maria		Foster		57
127323		Michale		Robbin		57
843795		Enric		Dosio		57

*/