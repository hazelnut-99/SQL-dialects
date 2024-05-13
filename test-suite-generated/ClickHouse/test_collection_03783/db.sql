DROP TABLE IF EXISTS test_table;
CREATE TABLE test_table (
    fingerprint UInt16,
    fields Nested(name Array(UInt32), value String)
) ENGINE = MergeTree
ORDER BY fingerprint;
INSERT INTO test_table VALUES (0, [[1]], ['1']);
