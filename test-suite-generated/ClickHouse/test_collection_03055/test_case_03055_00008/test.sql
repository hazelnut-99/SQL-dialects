SELECT sum((1 AS m) + (uint64 AS n)) j from test_table where m > 0 and n > 0 having j > 0;
