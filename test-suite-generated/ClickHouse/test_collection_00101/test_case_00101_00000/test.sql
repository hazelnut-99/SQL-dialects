SELECT col1, if(col1 IN ('a' ,'b'), 1, 0) AS t, toTypeName(t) FROM test1_00395;
