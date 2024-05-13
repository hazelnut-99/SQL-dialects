SELECT col1, CASE WHEN col1 IN ('a' ,'b') THEN NULL ELSE 0 END AS t, toTypeName(t) FROM test1_00395;
