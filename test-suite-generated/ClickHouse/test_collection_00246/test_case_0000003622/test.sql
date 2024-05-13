SELECT res FROM (SELECT col1, assumeNotNull(col1) AS res FROM test1_00395) WHERE col1 IS NOT NULL ORDER BY res ASC;
