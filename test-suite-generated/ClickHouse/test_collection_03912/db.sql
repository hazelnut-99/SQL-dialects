DROP TABLE IF EXISTS test_table;
CREATE TABLE test_table
(
    id UInt64,
    value_alias ALIAS concat('AliasValue_', toString(id)),
    value_materialized MATERIALIZED concat('MaterializedValue_', toString(id))
) ENGINE=MergeTree ORDER BY id;
INSERT INTO test_table VALUES (0);
