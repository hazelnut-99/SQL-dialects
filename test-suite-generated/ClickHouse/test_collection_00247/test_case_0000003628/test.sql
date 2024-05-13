SELECT col1, if(col1 IN ('a' ,'b'), NULL, 0) AS t, toTypeName(t) FROM test1_00395;
