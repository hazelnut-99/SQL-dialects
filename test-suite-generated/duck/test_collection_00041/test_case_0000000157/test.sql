SELECT x, y
FROM   generate_series(1,4) AS _(x), LATERAL
(WITH RECURSIVE t(y) AS (
  SELECT _.x
    UNION ALL
  SELECT y + 1
  FROM   t
  WHERE y < 3
)
SELECT * FROM t) AS t
ORDER BY x, y;
