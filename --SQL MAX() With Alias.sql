--SQL MAX() With Alias
SELECT MAX(price) as max_price
FROM Products
WHERE quantity <= 25;

/*
SQL MAX() With Alias
Easy
Problem Description
Suppose a database has a table named Products with the following data:

id	name	price	quantity
1	keyboard	250	25
2	mouse	175	22
7	headphone	150	20
5	HDMI Cable	15	28
6	CPU	350	25
Task: Write an SQL query to find the maximum price of products whose quantity is less than or equal to 25. The column name in the output should be max_price.

max_price
350
*/