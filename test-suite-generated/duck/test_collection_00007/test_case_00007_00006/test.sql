SELECT * FROM (SELECT NULL) tbl(i) UNION ALL SELECT CAST(1 AS BOOLEAN);
