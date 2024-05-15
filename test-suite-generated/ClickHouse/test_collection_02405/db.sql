DROP TABLE IF EXISTS test_table;
CREATE TABLE test_table
(
    id UInt64,
    value String
) ENGINE=TinyLog;
INSERT INTO test_table VALUES (0, 'Value');
DROP DATABASE IF EXISTS 02339_db;
CREATE DATABASE 02339_db;
DROP TABLE IF EXISTS 02339_db.test_table;
CREATE TABLE 02339_db.test_table
(
    id UInt64,
    value String
) ENGINE=TinyLog;
INSERT INTO 02339_db.test_table VALUES (0, 'Value');
DROP TABLE 02339_db.test_table;
DROP DATABASE 02339_db;
