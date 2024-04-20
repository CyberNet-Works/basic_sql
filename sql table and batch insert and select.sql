CREATE TABLE Movies (
    id int,
    title varchar(200),
    release_year int,
    genre varchar(200)
);

INSERT INTO
    Movies (id, title, release_year, genre)

VALUES 
    (1, "The Social Network", 2010, "Drama"),
    (2, "The Imitation Game", 2014, "Drama / Thriller");

    SELECT * FROM Movies;

---create table 2

CREATE TABLE SALES (
                    id int,
                    date_sold date,
                    product_name varchar(200),
                    price int
                    );

INSERT INTO 
    SALES (id, date_sold, product_name, price)
    VALUES 
        (1, "2023-02-25", "iPhone", 999),
        (5, "2023-02-26", "AirPods", 169);

SELECT *
FROM SALES;
    
    
--
Challenge:
Top 4 Teams in the League
Easy
Problem Description
Consider the following table:

Table - EPL

position	team	goals	points
1	United	90	80
2	City	80	78
3	Chelsea	45	68
4	Arsenal	53	67
5	Liverpool	54	66
6	Spurs	50	50
Task: Retrieve top 3 teams with more than 65 points and 50 goals.

team
United
City
Arsenal