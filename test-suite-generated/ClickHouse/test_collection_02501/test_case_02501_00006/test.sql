SELECT * FROM test_table_join_1 AS t1 FULL JOIN test_table_join_2 AS t2 USING (id) ORDER BY id, t1.value;
