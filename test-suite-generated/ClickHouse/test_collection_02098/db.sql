DROP DATABASE IF EXISTS 2025_test_db;
CREATE DATABASE 2025_test_db;
DROP TABLE IF EXISTS 2025_test_db.test_table;
CREATE TABLE 2025_test_db.test_table
(
    id UInt64,
    value String
) ENGINE=TinyLog;
INSERT INTO 2025_test_db.test_table VALUES (0, 'Value');
CREATE DICTIONARY 2025_test_db.test_dictionary
(
    id UInt64,
    value String
)
PRIMARY KEY id
LAYOUT(DIRECT())
SOURCE(CLICKHOUSE(TABLE 'test_table' DB '2025_test_db'));
DROP TABLE IF EXISTS 2025_test_db.view_table;
CREATE TABLE 2025_test_db.view_table
(
    id UInt64,
    value String
) ENGINE=TinyLog;
INSERT INTO 2025_test_db.view_table VALUES (0, 'ViewValue');
DROP VIEW IF EXISTS test_view_different_db;
CREATE VIEW test_view_different_db AS SELECT id, value, dictGet('2025_test_db.test_dictionary', 'value', id) FROM 2025_test_db.view_table;
