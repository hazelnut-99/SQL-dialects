SELECT * FROM test_table_join_1 AS t1 FULL JOIN test_table_join_2 AS t2 ON t1.id = t2.id ORDER BY t1.id, t1.value;
