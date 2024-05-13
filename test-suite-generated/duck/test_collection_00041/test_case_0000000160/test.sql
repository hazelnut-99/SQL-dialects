SELECT x, y
FROM   generate_series(1,4) AS _(x), LATERAL
(WITH RECURSIVE t(y) AS (
  SELECT _.x
    UNION ALL
  SELECT t1.y + t2.y + _.x
  FROM   t AS t1, t AS t2
  WHERE t1.y < 3
)
SELECT * FROM t) AS t
ORDER BY x, y;
