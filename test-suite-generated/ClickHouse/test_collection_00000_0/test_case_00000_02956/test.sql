SELECT x, y FROM (SELECT x, x, y FROM (SELECT 1 AS x, 2 AS y) UNION ALL SELECT x, y, y FROM (SELECT 3 AS x, 4 AS y)) ORDER BY x, y;
