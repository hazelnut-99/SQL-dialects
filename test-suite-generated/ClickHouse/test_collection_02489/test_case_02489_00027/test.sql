SELECT id FROM (SELECT id FROM test_table EXCEPT SELECT id FROM test_table);
