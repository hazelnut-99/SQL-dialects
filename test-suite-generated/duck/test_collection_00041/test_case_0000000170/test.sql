SELECT x, y, (WITH RECURSIVE t(z) AS (
  SELECT x + y
    UNION
  SELECT z + 1
  FROM   t
  WHERE z < 3
) SELECT sum(z) FROM t) AS z
FROM   generate_series(1,2) AS _(x), generate_series(1,2) AS __(y);
