DROP TABLE IF EXISTS table_with_lc_key;
CREATE TABLE table_with_lc_key
(
    enum_key Enum8('x' = 2, 'y' = 1),
    lc_key LowCardinality(String),
    value String
)
ENGINE MergeTree()
ORDER BY (enum_key, lc_key);
INSERT INTO table_with_lc_key VALUES(1, 'hello', 'world');
ALTER TABLE table_with_lc_key MODIFY COLUMN lc_key String;
SHOW CREATE TABLE table_with_lc_key;
DETACH TABLE table_with_lc_key;
ATTACH TABLE table_with_lc_key;
ALTER TABLE table_with_lc_key MODIFY COLUMN enum_key Enum('x' = 2, 'y' = 1, 'z' = 3);
SHOW CREATE TABLE table_with_lc_key;
DETACH TABLE table_with_lc_key;
ATTACH TABLE table_with_lc_key;
ALTER TABLE table_with_lc_key MODIFY COLUMN enum_key Int8;
SHOW CREATE TABLE table_with_lc_key;
DETACH TABLE table_with_lc_key;
ATTACH TABLE table_with_lc_key;
DROP TABLE IF EXISTS table_with_lc_key;
DROP TABLE IF EXISTS table_with_string_key;
CREATE TABLE table_with_string_key
(
    int_key Int8,
    str_key String,
    value String
)
ENGINE MergeTree()
ORDER BY (int_key, str_key);
INSERT INTO table_with_string_key VALUES(1, 'hello', 'world');
ALTER TABLE table_with_string_key MODIFY COLUMN str_key LowCardinality(String);
SHOW CREATE TABLE table_with_string_key;
DETACH TABLE table_with_string_key;
ATTACH TABLE table_with_string_key;
