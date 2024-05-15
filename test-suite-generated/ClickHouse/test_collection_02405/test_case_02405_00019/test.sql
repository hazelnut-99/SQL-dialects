SELECT COLUMNS(id, value) EXCEPT (id) APPLY toString FROM test_table;
