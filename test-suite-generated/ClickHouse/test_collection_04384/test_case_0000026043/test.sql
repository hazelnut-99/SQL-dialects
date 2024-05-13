SELECT id FROM (SELECT id, value FROM test_table UNION ALL SELECT id, value FROM test_table);
