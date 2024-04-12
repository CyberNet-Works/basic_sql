DELIMITER //
mysql>
mysql> CREATE PROCEDURE dbsize()
    -> BEGIN
    ->     -- Total database size
    ->     SELECT
    ->         ROUND(SUM(data_length + index_length) / 1024 / 1024, 2) AS "Total Database Size (MB)"
    ->     FROM
    ->         information_schema.tables
    ->     WHERE
    ->         table_schema = DATABASE();
    ->
    ->     -- Table-wise size
    ->     SELECT
    ->         table_name AS "Table",
    ->         ROUND(((data_length + index_length) / 1024 / 1024), 2) AS "Size (MB)"
    ->     FROM
    ->         information_schema.tables
    ->     WHERE
    ->         table_schema = DATABASE()
    ->     ORDER BY
    ->         (data_length + index_length) DESC;
    -> END //