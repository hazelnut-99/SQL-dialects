SELECT id FROM test_table WHERE value_ipv6 IN (SELECT value_ipv6 FROM test_table);
