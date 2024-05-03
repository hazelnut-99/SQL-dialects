DROP TABLE IF EXISTS test_table;
CREATE TABLE test_table
(
    number UInt64
)
ENGINE=MergeTree ORDER BY number;
DROP VIEW IF EXISTS test_mv;
CREATE MATERIALIZED VIEW test_mv ENGINE=MergeTree ORDER BY arr
AS
WITH (SELECT '\d[a-z]') AS constant_value
SELECT extractAll(concat(toString(number), 'a'), assumeNotNull(constant_value)) AS arr
FROM test_table;
INSERT INTO test_table VALUES (0);
