SELECT t1.id AS t1_id, toTypeName(t1_id), t1.value AS t1_value, toTypeName(t1_value), t2.id AS t2_id, toTypeName(t2_id), t2.value AS t2_value, toTypeName(t2_value)
FROM test_table_join_1 AS t1 LEFT JOIN test_table_join_2 AS t2 ON t1.id = t2.id;
