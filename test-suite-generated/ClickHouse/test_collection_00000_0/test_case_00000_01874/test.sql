SELECT count(), count(DISTINCT x, y) FROM (SELECT DISTINCT * FROM (SELECT 'a\0b' AS x, 'c' AS y UNION ALL SELECT 'a', 'b\0c'));
