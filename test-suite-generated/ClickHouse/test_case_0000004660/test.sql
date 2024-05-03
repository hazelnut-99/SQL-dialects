WITH
x AS (SELECT number AS a FROM numbers(10)),
y AS (SELECT number AS a FROM numbers(5)),
z AS (SELECT * FROM x WHERE a % 2),
w AS (SELECT * FROM y WHERE a > 0)
SELECT max(a) FROM x JOIN y USING a WHERE a in (SELECT * FROM z) AND a > (SELECT min(a) FROM w);
