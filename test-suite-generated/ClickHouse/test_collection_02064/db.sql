DROP TABLE IF EXISTS table_with_version;
CREATE TABLE table_with_version
(
    key UInt64,
    value String,
    version UInt8,
    sign Int8
)
ENGINE VersionedCollapsingMergeTree(sign, version)
ORDER BY key;
INSERT INTO table_with_version VALUES (1, '1', 1, -1);
INSERT INTO table_with_version VALUES (2, '2', 2, -1);
