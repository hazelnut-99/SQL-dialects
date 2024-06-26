DROP TABLE IF EXISTS prop_table;
CREATE TABLE prop_table
(
    column_default UInt64 DEFAULT 42,
    column_materialized UInt64 MATERIALIZED column_default * 42,
    column_alias UInt64 ALIAS column_default + 1,
    column_codec String CODEC(ZSTD(10)),
    column_comment Date COMMENT 'Some comment',
    column_ttl UInt64 TTL column_comment + INTERVAL 1 MONTH
)
ENGINE MergeTree()
ORDER BY tuple()
TTL column_comment + INTERVAL 2 MONTH;
SHOW CREATE TABLE prop_table;
SYSTEM STOP TTL MERGES prop_table;
INSERT INTO prop_table (column_codec, column_comment, column_ttl) VALUES ('str', toDate('2019-10-01'), 1);
ALTER TABLE prop_table MODIFY COLUMN column_comment REMOVE COMMENT;
SHOW CREATE TABLE prop_table;
ALTER TABLE prop_table MODIFY COLUMN column_codec REMOVE CODEC;
SHOW CREATE TABLE prop_table;
ALTER TABLE prop_table MODIFY COLUMN column_alias REMOVE ALIAS;
SHOW CREATE TABLE prop_table;
INSERT INTO prop_table (column_alias, column_codec, column_comment, column_ttl) VALUES (33, 'trs', toDate('2020-01-01'), 2);
ALTER TABLE prop_table MODIFY COLUMN column_materialized REMOVE MATERIALIZED;
SHOW CREATE TABLE prop_table;
INSERT INTO prop_table (column_materialized, column_alias, column_codec, column_comment, column_ttl) VALUES (11, 44, 'rts', toDate('2020-02-01'), 3);
ALTER TABLE prop_table MODIFY COLUMN column_default REMOVE DEFAULT;
SHOW CREATE TABLE prop_table;
INSERT INTO prop_table (column_materialized, column_alias, column_codec, column_comment, column_ttl) VALUES (22, 55, 'tsr', toDate('2020-03-01'), 4);
