SELECT value
FROM (SELECT (corr(value_1, value_1) OVER test_window) AS value FROM test_table WINDOW test_window AS (PARTITION BY value_2 ORDER BY id ASC)) as subquery
WHERE not (not (value <> value));
