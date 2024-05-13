DROP TABLE IF EXISTS alter_compression_codec;
CREATE TABLE alter_compression_codec (
    somedate Date CODEC(LZ4),
    id UInt64 CODEC(NONE)
) ENGINE = MergeTree() PARTITION BY somedate ORDER BY id;
INSERT INTO alter_compression_codec VALUES('2018-01-01', 1);
INSERT INTO alter_compression_codec VALUES('2018-01-01', 2);
