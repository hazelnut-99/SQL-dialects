SELECT (SELECT COUNT(*) + tbl.i FROM test USING SAMPLE 1) FROM range(3) tbl(i) ORDER BY i;
