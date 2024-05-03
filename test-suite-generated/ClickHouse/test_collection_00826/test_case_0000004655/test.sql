WITH
x AS (SELECT number AS a FROM numbers(10)),
y AS (SELECT number AS a FROM numbers(5))
SELECT * FROM x WHERE a in (SELECT a FROM y)
ORDER BY a;
