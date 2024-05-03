DROP TABLE IF EXISTS test_table_join_1;
CREATE TABLE test_table_join_1 (id UInt64, value String) ENGINE = TinyLog;
DROP TABLE IF EXISTS test_table_join_2;
CREATE TABLE test_table_join_2 (id UInt64, value String) ENGINE = TinyLog;
DROP TABLE IF EXISTS test_table_join_3;
CREATE TABLE test_table_join_3 (id UInt64, value String ) ENGINE = TinyLog;
INSERT INTO test_table_join_1 VALUES (1, 'a');
INSERT INTO test_table_join_2 VALUES (1, 'b');
INSERT INTO test_table_join_3 VALUES (1, 'c');
