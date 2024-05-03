WITH
x AS (SELECT number AS a FROM numbers(10)),
y AS (SELECT number AS a FROM numbers(5))
SELECT * FROM x left JOIN y USING a
ORDER BY a;
