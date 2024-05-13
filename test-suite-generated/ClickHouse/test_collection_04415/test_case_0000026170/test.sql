SELECT sum(((uint64 AS m) - (1 AS n)) AS i) j from test_table where m > 0 and n > 0 and i > 0 having j > 0;
