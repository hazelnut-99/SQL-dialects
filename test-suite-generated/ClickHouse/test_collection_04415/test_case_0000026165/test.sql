SELECT sum(((1 AS m) + (uint64 AS n)) AS i) j from test_table where m > 0 and n > 0 and i > 0 having j > 0;
