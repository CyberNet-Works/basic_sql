-- SQL COUNT()
SELECT COUNT(*)
FROM Products
WHERE price < 200;
/*
Challenge:
SQL COUNT()
Easy
Problem Description
Suppose a database has a table named Products with the following data:

id	name	price	quantity
1	keyboard	250	25
2	mouse	175	22
7	headphone	150	20
5	HDMI Cable	15	28
6	CPU	350	25
Task: Write an SQL query to count the number of products whose price is less than 200. The query should also include the count of products regardless of any NULL values.

COUNT(*)
3
*/