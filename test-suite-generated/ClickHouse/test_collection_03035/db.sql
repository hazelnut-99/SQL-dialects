DROP TABLE IF EXISTS test_table;
CREATE TABLE test_table (message String) ENGINE=TinyLog;
INSERT INTO test_table VALUES ('Test');
