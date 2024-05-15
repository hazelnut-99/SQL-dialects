SELECT x, y, (WITH RECURSIVE t(z) AS (
  SELECT x + y
    UNION ALL
  SELECT z + 1
  FROM   (WITH RECURSIVE g(a) AS (
          SELECT t.z
          FROM   t
            UNION ALL
          SELECT g.a + (x + y) / 2
          FROM   g
          WHERE  g.a < 3)
          SELECT * FROM g) AS t(z)
  WHERE z < 5
) SELECT sum(z) FROM t) AS z
FROM   generate_series(1,2) AS _(x), generate_series(1,2) AS __(y);
