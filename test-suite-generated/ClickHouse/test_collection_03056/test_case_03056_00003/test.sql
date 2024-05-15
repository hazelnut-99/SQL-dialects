SELECT sum((uint64 AS m) + (1 AS n)) j from test_table where m > 0 and n > 0 having j > 0;
