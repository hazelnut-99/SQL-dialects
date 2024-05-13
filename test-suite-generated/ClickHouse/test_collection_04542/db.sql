DROP TABLE IF EXISTS test_temporary_table_02989;
CREATE TEMPORARY TABLE test_temporary_table_02989
(
    id UInt64,
    value String
) ENGINE=MergeTree ORDER BY id;
DROP TABLE test_temporary_table_02989;
DROP TABLE IF EXISTS test_table;
CREATE TABLE test_table
(
    id UInt64,
    value String
) ENGINE=MergeTree ORDER BY id;
