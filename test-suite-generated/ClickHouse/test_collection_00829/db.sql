DROP TABLE IF EXISTS alter_compression_codec;
CREATE TABLE alter_compression_codec (
    somedate Date CODEC(LZ4),
    id UInt64 CODEC(NONE)
) ENGINE = MergeTree() PARTITION BY somedate ORDER BY id;
INSERT INTO alter_compression_codec VALUES('2018-01-01', 1);
INSERT INTO alter_compression_codec VALUES('2018-01-01', 2);
ALTER TABLE alter_compression_codec ADD COLUMN alter_column String DEFAULT 'default_value' CODEC(ZSTD);
INSERT INTO alter_compression_codec VALUES('2018-01-01', 3, '3');
INSERT INTO alter_compression_codec VALUES('2018-01-01', 4, '4');
ALTER TABLE alter_compression_codec MODIFY COLUMN alter_column CODEC(NONE);
INSERT INTO alter_compression_codec VALUES('2018-01-01', 5, '5');
INSERT INTO alter_compression_codec VALUES('2018-01-01', 6, '6');
OPTIMIZE TABLE alter_compression_codec FINAL;
INSERT INTO alter_compression_codec VALUES('2018-01-01', 7, '7');
INSERT INTO alter_compression_codec VALUES('2018-01-01', 8, '8');
OPTIMIZE TABLE alter_compression_codec FINAL;
ALTER TABLE alter_compression_codec MODIFY COLUMN alter_column FixedString(100);
DROP TABLE IF EXISTS alter_compression_codec;
DROP TABLE IF EXISTS alter_bad_codec;
CREATE TABLE alter_bad_codec (
    somedate Date CODEC(LZ4),
    id UInt64 CODEC(NONE)
) ENGINE = MergeTree() ORDER BY tuple();
DROP TABLE IF EXISTS alter_bad_codec;
DROP TABLE IF EXISTS large_alter_table_00804;
DROP TABLE IF EXISTS store_of_hash_00804;
CREATE TABLE store_of_hash_00804 (hash UInt64) ENGINE = Memory();
