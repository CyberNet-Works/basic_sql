--SQL AVG()

SELECT AVG(price) as average_price
FROM Products;

/*
Problem Description
Suppose a database has a table named Products with the following data:

id	name	price	quantity
1	keyboard	250	25
2	mouse	175	22
7	headphone	150	20
5	HDMI Cable	15	28
6	CPU	350	25
Task: Write an SQL query to calculate the average price of products. Also, the column name in the output should be average_price.

average_price
188
*/