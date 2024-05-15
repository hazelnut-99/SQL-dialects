DROP TABLE IF EXISTS test_table;
CREATE TABLE test_table
(
    id UInt64,
    value String
) ENGINE=TinyLog;
INSERT INTO test_table VALUES (0, 'Value');
DROP TABLE test_table;
DROP DATABASE IF EXISTS 02337_db;
CREATE DATABASE 02337_db;
DROP TABLE IF EXISTS 02337_db.test_table;
CREATE TABLE 02337_db.test_table
(
    id UInt64,
    value String
) ENGINE=TinyLog;
INSERT INTO 02337_db.test_table VALUES (0, 'Value');
