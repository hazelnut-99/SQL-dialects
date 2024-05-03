WITH
x AS (SELECT * FROM cte1),
y AS (SELECT * FROM cte2),
z AS (SELECT * FROM x WHERE a % 3 = 1),
w AS (SELECT * FROM y WHERE a > 333 AND a < 1000)
SELECT count(a) 
FROM x left JOIN y USING (a) 
WHERE a in (SELECT * FROM z);
