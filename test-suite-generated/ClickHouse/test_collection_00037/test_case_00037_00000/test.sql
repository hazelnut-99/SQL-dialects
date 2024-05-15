SELECT *, b FROM merge_00160 WHERE x IN (12345, 67890) AND NOT ignore(blockSize() < 10 AS b) ORDER BY x;
