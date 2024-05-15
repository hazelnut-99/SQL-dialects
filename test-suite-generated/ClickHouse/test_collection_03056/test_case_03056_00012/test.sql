SELECT sum(uint64 - 1 AS i) j from test_table where i > 0 having j > 0;
