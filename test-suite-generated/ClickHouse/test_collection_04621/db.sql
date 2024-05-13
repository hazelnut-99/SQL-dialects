DROP TABLE IF EXISTS 03040_test;
CREATE TABLE 03040_test
(
    id           UInt64,
    val String alias 'value: '||toString(id)
) ENGINE = MergeTree
ORDER BY tuple();
