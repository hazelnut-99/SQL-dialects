SELECT
    toTypeName(t2_value),
    t2.value AS t2_value
FROM test_table_join_1 AS t1
INNER JOIN test_table_join_2 AS t2 USING (id);
