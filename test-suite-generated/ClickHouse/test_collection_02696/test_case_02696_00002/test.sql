SELECT * FROM test1 LEFT JOIN test2 ON test1.col1 = test2.col1
WHERE test2.col1 IS NOT NULL
ORDER BY test2.col1
;
