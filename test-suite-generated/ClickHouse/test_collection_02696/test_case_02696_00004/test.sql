SELECT test2.col1, test1.* FROM test2 RIGHT JOIN test1 ON test2.col1 = test1.col1
WHERE test2.col1 IS NOT NULL
ORDER BY test2.col1
;
