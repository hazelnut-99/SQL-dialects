SELECT x, y
FROM   generate_series(1,4) AS _(x), LATERAL
(WITH RECURSIVE t(y) AS (
  SELECT 1
    UNION
  SELECT y + _.x
  FROM   t
  WHERE y < 3
)
SELECT * FROM t) AS t
ORDER BY x, y;
