SELECT sum(1 + uint64 AS i) j from test_table where i > 0 having j > 0;
