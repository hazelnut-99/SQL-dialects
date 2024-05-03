WITH
x AS (SELECT a-4000 a FROM cte1 t WHERE t.a >700),
y AS (SELECT x.a a FROM x left JOIN cte1 USING (a)),
z AS (SELECT * FROM x WHERE a % 3 = 1),
w AS (SELECT * FROM y WHERE a > 333 AND a < 1000)
SELECT max(a), min(a), count(*) 
FROM y
WHERE a <100;
