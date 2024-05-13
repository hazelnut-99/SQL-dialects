SELECT COLUMNS(id, value) EXCEPT id REPLACE (5 AS id, 6 as value) APPLY toString FROM test_table;
