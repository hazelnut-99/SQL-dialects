DROP TABLE IF EXISTS test_table;
CREATE TABLE test_table
(
    c0 String ALIAS c1,
    c1 String,
    c2 String,
) ENGINE = MergeTree ORDER BY c1;
INSERT INTO test_table VALUES ('a', 'b');
