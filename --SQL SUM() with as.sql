--SQL SUM() with as
SELECT SUM(quantity) as total_products
FROM Products
WHERE price > 160;

/*
Problem Description
Suppose a database has a table named Products with the following data:

id	name	price	quantity
1	keyboard	250	25
2	mouse	175	22
7	headphone	150	20
5	HDMI Cable	15	28
6	CPU	350	25
Task: Write an SQL query to calculate the total quantity of products. Also, the column name in the output should be total_products.

total_products
120
*/