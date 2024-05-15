SELECT id, sum(value1), sum(value2), sum(value3), sum(value4)FROM test_table_signed_values GROUP BY id ORDER BY id;
