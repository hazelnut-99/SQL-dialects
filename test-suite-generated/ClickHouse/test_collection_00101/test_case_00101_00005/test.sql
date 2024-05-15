SELECT col1, CASE WHEN col1 IN ('a' ,'b') THEN 1 END AS t, toTypeName(t) FROM test1_00395;
