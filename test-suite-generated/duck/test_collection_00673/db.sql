CREATE TABLE Product(DaysToManufacture int, StandardCost int);
INSERT INTO Product VALUES (0, 5.0885), (1, 223.88), (2, 359.1082), (4, 949.4105);
CREATE OR REPLACE TABLE monthly_sales(empid INT, amount INT, month TEXT);
INSERT INTO monthly_sales VALUES
    (1, 10000, 'JAN'),
    (1, 400, 'JAN'),
    (2, 4500, 'JAN'),
    (2, 35000, 'JAN'),
    (1, 5000, 'FEB'),
    (1, 3000, 'FEB'),
    (2, 200, 'FEB'),
    (2, 90500, 'FEB'),
    (1, 6000, 'MAR'),
    (1, 5000, 'MAR'),
    (2, 2500, 'MAR'),
    (2, 9500, 'MAR'),
    (1, 8000, 'APR'),
    (1, 10000, 'APR'),
    (2, 800, 'APR'),
    (2, 4500, 'APR');
INSERT INTO monthly_sales VALUES (1, 250, NULL);
FROM
(
  SELECT DaysToManufacture, StandardCost
  FROM Product
) AS SourceTable
PIVOT
(
  AVG(StandardCost)
  FOR DaysToManufacture IN ('zz')
) AS PivotTable;
CREATE TABLE Cities(Country VARCHAR, Name VARCHAR, Year INT, Population INT);
INSERT INTO Cities VALUES ('NL', 'Amsterdam', 2000, 1005);
INSERT INTO Cities VALUES ('NL', 'Amsterdam', 2010, 1065);
INSERT INTO Cities VALUES ('NL', 'Amsterdam', 2020, 1158);
INSERT INTO Cities VALUES ('US', 'Seattle', 2000, 564);
INSERT INTO Cities VALUES ('US', 'Seattle', 2010, 608);
INSERT INTO Cities VALUES ('US', 'Seattle', 2020, 738);
INSERT INTO Cities VALUES ('US', 'New York City', 2000, 8015);
INSERT INTO Cities VALUES ('US', 'New York City', 2010, 8175);
INSERT INTO Cities VALUES ('US', 'New York City', 2020, 8772);
PIVOT Cities ON Country, Name IN ('xx') USING SUM(Population);
PIVOT Cities ON Year USING SUM(Population);
PIVOT_WIDER Cities ON Year USING SUM(Population);
FROM Cities PIVOT (SUM(Population) FOR Year IN (2000, 2010, 2020));
PIVOT Cities ON Year IN (2000, 2020) USING SUM(Population);
PIVOT Cities ON Year USING SUM(Population) GROUP BY Country;
PIVOT Cities ON Year USING SUM(Population)
UNION ALL BY NAME
PIVOT Cities ON Name USING SUM(Population);
FROM
	(PIVOT Cities ON Year USING SUM(Population) GROUP BY Country)
JOIN
	(PIVOT Cities ON Name USING SUM(Population) GROUP BY Country)
USING (Country);
PIVOT Cities ON (Country, Name) IN ('xx') USING SUM(Population);
PIVOT (SELECT Country, Population, Year FROM Cities) ON Year USING SUM(Population) as sum_pop, count(population) as count_pop,;
PIVOT Cities ON Year USING SUM(Population) as sum_pop, count(population) as count_pop, GROUP BY Country;
PIVOT Cities ON Year USING SUM(Population), count(population) GROUP BY Country;
PIVOT Cities ON Year USING SUM(Population) GROUP BY country ORDER BY country desc;
PIVOT Cities ON Year USING SUM(Population) GROUP BY country ORDER BY country desc LIMIT 1;
PIVOT Cities ON Year USING SUM(Population) GROUP BY country ORDER BY country LIMIT 1;
PIVOT Cities ON Year USING SUM(Population) GROUP BY country ORDER BY country LIMIT 1 OFFSET 1;
PIVOT Cities ON Year USING SUM(Population) GROUP BY country ORDER BY ALL;
PIVOT Cities ON Country, Name IN ('xx') USING SUM(Population);
PIVOT Cities ON Year USING SUM(Population);
PIVOT_WIDER Cities ON Year USING SUM(Population);
FROM Cities PIVOT (SUM(Population) FOR Year IN (2000, 2010, 2020));
PIVOT Cities ON Year IN (2000, 2020) USING SUM(Population);
PIVOT Cities ON Year USING SUM(Population) GROUP BY Country;
PIVOT Cities ON Year USING SUM(Population)
UNION ALL BY NAME
PIVOT Cities ON Name USING SUM(Population);
FROM
	(PIVOT Cities ON Year USING SUM(Population) GROUP BY Country)
JOIN
	(PIVOT Cities ON Name USING SUM(Population) GROUP BY Country)
USING (Country);
PIVOT Cities ON (Country, Name) IN ('xx') USING SUM(Population);
PIVOT (SELECT Country, Population, Year FROM Cities) ON Year USING SUM(Population) as sum_pop, count(population) as count_pop,;
PIVOT Cities ON Year USING SUM(Population) as sum_pop, count(population) as count_pop, GROUP BY Country;
PIVOT Cities ON Year USING SUM(Population), count(population) GROUP BY Country;
PIVOT Cities ON Year USING SUM(Population) GROUP BY country ORDER BY country desc;
PIVOT Cities ON Year USING SUM(Population) GROUP BY country ORDER BY country desc LIMIT 1;
PIVOT Cities ON Year USING SUM(Population) GROUP BY country ORDER BY country LIMIT 1;
PIVOT Cities ON Year USING SUM(Population) GROUP BY country ORDER BY country LIMIT 1 OFFSET 1;
PIVOT Cities ON Year USING SUM(Population) GROUP BY country ORDER BY ALL;
CREATE TABLE PivotedCities AS PIVOT Cities ON Year USING SUM(Population);
UNPIVOT PivotedCities ON 2000, 2010, 2020 INTO NAME Year VALUE Population;
FROM PivotedCities UNPIVOT(Population FOR Year IN (2000, 2010, 2020));
UNPIVOT PivotedCities ON 2000, 2010, 2020;
UNPIVOT PivotedCities ON COLUMNS('\d+');
UNPIVOT PivotedCities ON * EXCLUDE (Country, Name);
PIVOT_LONGER PivotedCities ON 2000, 2010, 2020;
UNPIVOT PivotedCities ON 2000, 2010, 2020 ORDER BY ALL DESC LIMIT 1;
UNPIVOT PivotedCities ON 2000, 2010, 2020 ORDER BY ALL LIMIT 1;
UNPIVOT PivotedCities ON 2000, 2010, 2020 ORDER BY 1 LIMIT 1 OFFSET 1;
INSERT INTO Cities VALUES ('NL', 'Amsterdam', 2000, 1005);
INSERT INTO Cities VALUES ('NL', 'Amsterdam', 2010, 1065);
INSERT INTO Cities VALUES ('NL', 'Amsterdam', 2020, 1158);
INSERT INTO Cities VALUES ('US', 'Seattle', 2000, 564);
INSERT INTO Cities VALUES ('US', 'Seattle', 2010, 608);
INSERT INTO Cities VALUES ('US', 'Seattle', 2020, 738);
INSERT INTO Cities VALUES ('US', 'New York City', 2000, 8015);
INSERT INTO Cities VALUES ('US', 'New York City', 2010, 8175);
INSERT INTO Cities VALUES ('US', 'New York City', 2020, 8772);
PIVOT Cities ON Country || '_' || Name USING SUM(Population) GROUP BY Year;
PIVOT Cities ON (CASE WHEN Country='NL' THEN NULL ELSE Country END) USING SUM(Population) GROUP BY Year;
unpivot (select cast(columns(*) as varchar) from (select 42 as col1, 'woot' as col2))
    on columns(*);
CREATE OR REPLACE TABLE sales(empid INT, amount INT, month TEXT, year INT);
INSERT INTO sales VALUES
    (1, 10000, 'JAN', 2020),
    (1, 400, 'JAN', 2021),
    (2, 4500, 'JAN', 2021),
    (2, 35000, 'JAN', 2020),
    (1, 5000, 'FEB', 2020),
    (1, 3000, 'FEB', 2021),
    (2, 200, 'FEB', 2021),
    (2, 90500, 'FEB', 2020),
    (1, 6000, 'MAR', 2021),
    (1, 5000, 'MAR', 2021),
    (2, 2500, 'MAR', 2021),
    (2, 9500, 'MAR', 2021),
    (1, 8000, 'APR', 2020),
    (1, 10000, 'APR', 2020),
    (2, 800, 'APR', 2021),
    (2, 4500, 'APR', 2020);
INSERT INTO Cities VALUES ('NL', 'Amsterdam', 2000, 1005);
INSERT INTO Cities VALUES ('NL', 'Amsterdam', 2010, 1065);
INSERT INTO Cities VALUES ('NL', 'Amsterdam', 2020, 1158);
INSERT INTO Cities VALUES ('US', 'Seattle', 2000, 564);
INSERT INTO Cities VALUES ('US', 'Seattle', 2010, 608);
INSERT INTO Cities VALUES ('US', 'Seattle', 2020, 738);
INSERT INTO Cities VALUES ('US', 'New York City', 2000, 8015);
INSERT INTO Cities VALUES ('US', 'New York City', 2010, 8175);
INSERT INTO Cities VALUES ('US', 'New York City', 2020, 8772);
PIVOT Cities ON Year IN (SELECT Year FROM Cities ORDER BY Year DESC) USING SUM(Population);
PIVOT Cities ON Year IN (SELECT YEAR FROM (SELECT Year, SUM(POPULATION) AS popsum FROM Cities GROUP BY Year ORDER BY popsum DESC)) USING SUM(Population);
PIVOT Cities ON Year IN (SELECT '2010' UNION ALL SELECT '2000' UNION ALL SELECT '2020') USING SUM(Population);
CREATE TABLE t1(id BIGINT, "Sales (05/19/2020)" BIGINT, "Sales (06/03/2020)" BIGINT, "Sales (10/23/2020)" BIGINT);
INSERT INTO t1 VALUES(10629465, 23, 47, 99);
INSERT INTO t1 VALUES(98765432, 10, 99, 33);
CREATE OR REPLACE TABLE sales(empid INT, amount INT, d DATE);
INSERT INTO sales VALUES
    (1, 10000, DATE '2000-01-01'),
    (1, 400, DATE '2000-01-07'),
    (2, 4500, DATE '2001-01-21'),
    (2, 35000, DATE '2001-01-21'),
    (1, 5000, DATE '2000-02-03'),
    (1, 3000, DATE '2000-02-07'),
    (2, 200, DATE '2001-02-05'),
    (2, 90500, DATE '2001-02-19'),
    (1, 6000, DATE '2000-03-01'),
    (1, 5000, DATE '2000-03-09'),
    (2, 2500, DATE '2001-03-03'),
    (2, 9500, DATE '2001-03-08');
PIVOT (SELECT YEAR(d) AS year, MONTH(d) AS month, empid, amount FROM sales) ON YEAR, MONTH USING SUM(AMOUNT) ORDER BY ALL;
PIVOT (PIVOT (SELECT YEAR(d) AS year, MONTH(d) AS month, empid, amount FROM sales) ON YEAR, MONTH USING SUM(AMOUNT))
ON empid USING SUM(COALESCE("2000_1",0) + COALESCE("2000_2",0) + COALESCE("2000_3",0) + COALESCE("2001_1",0) + COALESCE("2001_2",0) + COALESCE("2001_3",0));
CREATE OR REPLACE TABLE monthly_sales(empid INT, amount INT, month TEXT);
INSERT INTO monthly_sales VALUES
    (1, 10000, '1-JAN'),
    (1, 400, '1-JAN'),
    (2, 4500, '1-JAN'),
    (2, 35000, '1-JAN'),
    (1, 5000, '2-FEB'),
    (1, 3000, '2-FEB'),
    (2, 200, '2-FEB'),
    (2, 90500, '2-FEB'),
    (1, 6000, '3-MAR'),
    (1, 5000, '3-MAR'),
    (2, 2500, '3-MAR'),
    (2, 9500, '3-MAR'),
    (1, 8000, '4-APR'),
    (1, 10000, '4-APR'),
    (2, 800, '4-APR'),
    (2, 4500, '4-APR');
PIVOT monthly_sales ON MONTH USING SUM(AMOUNT);
FROM (PIVOT monthly_sales ON MONTH USING SUM(AMOUNT));
PIVOT monthly_sales ON MONTH USING SUM(AMOUNT) GROUP BY empid;
PIVOT monthly_sales ON MONTH IN ('1-JAN', '2-FEB', '3-MAR', '4-APR') USING SUM(AMOUNT) GROUP BY empid;
PIVOT monthly_sales ON MONTH IN ('1-JAN', '2-FEB', '3-MAR') USING SUM(AMOUNT) GROUP BY empid;
PIVOT monthly_sales ON MONTH USING SUM(AMOUNT) GROUP BY empid;
ALTER TABLE monthly_sales ADD COLUMN status VARCHAR;
UPDATE monthly_sales SET status=CASE WHEN amount >= 10000 THEN 'important' ELSE 'regular' END;
FROM (PIVOT monthly_sales ON MONTH USING SUM(AMOUNT)) ORDER BY ALL;
PIVOT monthly_sales ON MONTH USING SUM(AMOUNT) GROUP BY empid ORDER BY ALL;
FROM (PIVOT monthly_sales ON MONTH USING SUM(AMOUNT) GROUP BY status) ORDER BY ALL;
WITH pivoted_sales AS (PIVOT monthly_sales ON MONTH USING SUM(AMOUNT) GROUP BY empid)
SELECT * FROM pivoted_sales ORDER BY empid DESC;
WITH pivoted_sales AS MATERIALIZED (PIVOT monthly_sales ON MONTH USING SUM(AMOUNT) GROUP BY empid)
SELECT * FROM pivoted_sales ORDER BY empid DESC;
CREATE VIEW v1 AS PIVOT monthly_sales ON MONTH IN ('1-JAN', '2-FEB', '3-MAR', '4-APR') USING SUM(AMOUNT) GROUP BY empid ORDER BY ALL;
FROM v1;
CREATE OR REPLACE TABLE monthly_sales(empid INT, amount INT, month TEXT);
INSERT INTO monthly_sales VALUES
    (1, 10000, 'JAN'),
    (1, 400, 'JAN'),
    (2, 4500, 'JAN'),
    (2, 35000, 'JAN'),
    (1, 5000, 'FEB'),
    (1, 3000, 'FEB'),
    (2, 200, 'FEB'),
    (2, 90500, 'FEB'),
    (1, 6000, 'MAR'),
    (1, 5000, 'MAR'),
    (2, 2500, 'MAR'),
    (2, 9500, 'MAR'),
    (1, 8000, 'APR'),
    (1, 10000, 'APR'),
    (2, 800, 'APR'),
    (2, 4500, 'APR');
CREATE TYPE unique_months AS ENUM (SELECT DISTINCT month FROM monthly_sales ORDER BY
	CASE month WHEN 'JAN' THEN 1 WHEN 'FEB' THEN 2 WHEN 'MAR' THEN 3 ELSE 4 END);
CREATE TYPE not_an_enum AS VARCHAR;
CREATE TABLE test(i INT, j VARCHAR);
CREATE OR REPLACE TABLE monthly_sales(empid INT, amount INT, month TEXT);
INSERT INTO monthly_sales VALUES
    (1, 10000, 'JAN'),
    (1, 400, 'JAN'),
    (2, 4500, 'JAN'),
    (2, 35000, 'JAN'),
    (1, 5000, 'FEB'),
    (1, 3000, 'FEB'),
    (2, 200, 'FEB'),
    (2, 90500, 'FEB'),
    (1, 6000, 'MAR'),
    (1, 5000, 'MAR'),
    (2, 2500, 'MAR'),
    (2, 9500, 'MAR'),
    (1, 8000, 'APR'),
    (1, 10000, 'APR'),
    (2, 800, 'APR'),
    (2, 4500, 'APR');
CREATE MACRO pivot_macro(val)
as TABLE SELECT *
  FROM monthly_sales
    PIVOT(SUM(amount + val) FOR MONTH IN ('JAN', 'FEB', 'MAR', 'APR'))
      AS p
  ORDER BY EMPID;
FROM v1;
FROM pivot_macro(1);
FROM v1;
FROM pivot_macro(1);
unpivot (select 42 as col1, 'woot' as col2)
    on col1::VARCHAR, col2;
unpivot (select 42 as col1, 'woot' as col2)
    on COLUMNS(*)::VARCHAR;
unpivot (select 42 as col1, 'woot' as col2)
    on (col1 + 100)::VARCHAR, col2;
unpivot (select 42 as col1, 'woot' as col2)
    on (col1 + 100)::VARCHAR AS c, col2;
INSERT INTO Cities VALUES ('NL', 'Amsterdam', 2000, 1005);
INSERT INTO Cities VALUES ('NL', 'Amsterdam', 2010, 1065);
INSERT INTO Cities VALUES ('NL', 'Amsterdam', 2020, 1158);
INSERT INTO Cities VALUES ('US', 'Seattle', 2000, 564);
INSERT INTO Cities VALUES ('US', 'Seattle', 2010, 608);
INSERT INTO Cities VALUES ('US', 'Seattle', 2020, 738);
INSERT INTO Cities VALUES ('US', 'New York City', 2000, 8015);
INSERT INTO Cities VALUES ('US', 'New York City', 2010, 8175);
INSERT INTO Cities VALUES ('US', 'New York City', 2020, 8772);
pivot cities on (Country='NL') using avg(Population) group by name;
pivot cities on (Country='NL') in (false, true) using avg(Population) group by name;
;
CREATE TABLE Produce AS
  SELECT 'Kale' as product, 51 as sales, 'Q1' as quarter, 2020 as year UNION ALL
  SELECT 'Kale', 23, 'Q2', 2020 UNION ALL
  SELECT 'Kale', 45, 'Q3', 2020 UNION ALL
  SELECT 'Kale', 3, 'Q4', 2020 UNION ALL
  SELECT 'Kale', 70, 'Q1', 2021 UNION ALL
  SELECT 'Kale', 85, 'Q2', 2021 UNION ALL
  SELECT 'Apple', 77, 'Q1', 2020 UNION ALL
  SELECT 'Apple', 0, 'Q2', 2020 UNION ALL
  SELECT 'Apple', 1, 'Q1', 2021;
