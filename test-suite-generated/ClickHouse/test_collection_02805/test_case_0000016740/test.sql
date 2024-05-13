SELECT id, avg(value1), avg(value2), avg(value3), avg(value4) FROM test_table_nullable_signed_values GROUP BY id ORDER BY id;
