SELECT count(), count(DISTINCT x, y) FROM (SELECT DISTINCT * FROM (SELECT [1, 2] AS x, [3] AS y UNION ALL SELECT [1], [2, 3]));
