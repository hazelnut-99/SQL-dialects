SELECT * FROM (SELECT corr(id, id) as corr_value FROM test_table GROUP BY value) AS subquery LEFT ANTI JOIN test_table ON (subquery.corr_value = test_table.id)
WHERE (test_table.id >= test_table.id) AND (NOT (test_table.id >= test_table.id));
