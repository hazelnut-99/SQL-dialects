create table test as select range i from range(3);
WITH data AS (
    SELECT 1 as a, 2 as b, 3 as c
)
SELECT d FROM data d;
create table main as select 3 test;
create table structs as select {test: 4} main;
CREATE TABLE tbl AS SELECT NULL UNION ALL SELECT NULL;
CREATE VIEW v1 AS SELECT NULL;
CREATE VIEW v2 AS SELECT NULL UNION ALL SELECT NULL;
WITH cte AS (SELECT NULL)
SELECT * FROM cte;
WITH cte AS (SELECT NULL)
SELECT * FROM cte UNION ALL SELECT CAST(1 AS BOOLEAN);
CREATE TABLE integers(i INTEGER);
INSERT INTO integers VALUES (1), (2), (3), (NULL);
WITH cte AS (SELECT '01' AS s)
SELECT 1=s AS in_res FROM cte;
WITH cte AS (SELECT '01' AS s)
SELECT 1 IN (s) AS in_res FROM cte;
