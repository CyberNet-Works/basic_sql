--Pivot_table

SELECT student_id,
    MAX(CASE WHEN subject = 'English' THEN grade END) AS english,
    MAX(CASE WHEN subject = 'Math' THEN grade END) AS math,
    MAX(CASE WHEN subject = 'Science' THEN grade END) AS science

FROM 
    Students

GROUP BY
    student_id
    ;

/*
Challenge:
Pivot the Table to the Given Format
Hard
Problem Description
Consider the following table:

Table - Students

student_id	subject	grade
1	English	A+
1	Math	C+
1	Science	B
2	English	B
2	Math	C+
2	Science	A+
Task: Pivot the above table to the following format:

Output Table - Grades

student_id	english	math	science 
1	A+	C+	B
2	B	C+	A+

*/