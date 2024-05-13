DROP TABLE IF EXISTS test_table;
CREATE TABLE test_table
(
    id UInt64,
    value String
) ENGINE=MergeTree ORDER BY id;
INSERT INTO test_table VALUES (0, 'Value');
DROP TABLE IF EXISTS test_table_join;
CREATE TABLE test_table_join
(
    id UInt64,
    value String
) ENGINE = Join(All, inner, id);
INSERT INTO test_table_join VALUES (0, 'JoinValue');
