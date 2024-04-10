-- SQL SELECT WHERE STATEMENTS

SELECT *
FROM Customers
WHERE country <> "UK"

-- SQL or statement
SELECT name
FROM Products
WHERE quantity = 25 OR price < 160;

-- SQL NOT operator
SELECT name
FROM Products
WHERE NOT quantity = 25;