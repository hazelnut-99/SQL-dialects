SELECT t1.id, test_table_join_1.id, t1.value, test_table_join_1.value, t2.id, test_table_join_2.id, t2.value, test_table_join_2.value,
t3.id, test_table_join_3.id, t3.value, test_table_join_3.value
FROM test_table_join_1 AS t1, test_table_join_2 AS t2, test_table_join_3 AS t3;
