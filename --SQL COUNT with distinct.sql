--SQL COUNT with distinct 
SELECT COUNT(DISTINCT age) as distinct_age
FROM Employees
WHERE department = 'Operations' or department = 'Sales';

/*

SQL COUNT()
Problem Description
Suppose a database has a table named Employees with the following data:

id	first_name	last_name	department	age
1	Peter	Parker	Operations	25
2	Meghan	Markle	Finance	26
3	Joe	Rogan	Finance	27
4	Mike	Tyson	Sales	25
5	Mary	Beth	Operations	24
7	Elon	Gates	Sales	19
8	Samantha	Jones	Marketing	26
Task

Select the count of distinct ages of employees who are from either the Operations or Sales department.

Also, the column name in the output should be distinct_age.

distinct_age
3

*/