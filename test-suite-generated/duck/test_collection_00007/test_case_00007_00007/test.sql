SELECT * FROM (SELECT (SELECT NULL) UNION ALL SELECT CAST(1 AS BOOLEAN)) tbl(i);
