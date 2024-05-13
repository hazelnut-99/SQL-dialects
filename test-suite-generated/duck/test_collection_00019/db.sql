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
CREATE TABLE src("Name" VARCHAR, CreatedAt TIMESTAMP, userID VARCHAR, "Version" VARCHAR, Clients BIGINT, HasDocumentation BOOLEAN, HasCustomAddress BOOLEAN, HasHostname BOOLEAN, RunningContainers BIGINT, HasActions BOOLEAN);
CREATE VIEW model AS SELECT DISTINCT on(userID,  date_trunc('day', CreatedAt))  date_trunc('day', CreatedAt) AS CreatedAt, "Version", Clients, HasCustomAddress, HasHostname, RunningContainers, HasDocumentation, HasActions  FROM src WHERE name = 'events' ORDER BY userID, CreatedAt DESC;
CREATE OR REPLACE TABLE tbl (example VARCHAR);
INSERT INTO tbl VALUES ('hello');
INSERT INTO integers VALUES (1), (2), (3);
create table orders as
select
    cast(random()*100 as integer) + 1 as customer_id,
    date '2020-01-01' + interval (cast(random()*365*10 as integer)) days as order_date,
    cast(random()*1000 as integer) as order_amount,
from range(0, 1000)
order by order_date;
INSERT INTO test VALUES (1);
DROP TABLE test;
CREATE TABLE test1("HeLlO" INTEGER);
CREATE TABLE test2("HELLO" INTEGER);
create table my_functions as select 'my_name' as function_name;
INSERT INTO integers VALUES (1), (2), (3), (NULL);
CREATE TABLE varchars(v VARCHAR);
INSERT INTO varchars VALUES ('>>%Test<<'), ('%FUNCTION%'), ('Chaining');
