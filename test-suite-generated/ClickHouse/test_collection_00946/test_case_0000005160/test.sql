WITH
x AS (SELECT a-4000 a FROM cte1 WHERE cte1.a >700),
y AS (SELECT * FROM cte2),
z AS (SELECT * FROM x WHERE a % 3 = 1),
w AS (SELECT * FROM y WHERE a > 333 AND a < 1000)
SELECT max(a), min(a), count(*) FROM x
WHERE  a <100;
