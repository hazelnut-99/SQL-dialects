WITH
x AS (SELECT * FROM cte1),
y AS (SELECT * FROM cte2),
z AS (SELECT * FROM x WHERE a % 2 = 1),
w AS (SELECT * FROM y WHERE a > 333)
SELECT max(a) 
FROM x JOIN y USING (a) 
WHERE a in (SELECT * FROM z) AND a <= (SELECT max(a) FROM w);
