DROP TABLE IF EXISTS map_lc;
CREATE TABLE map_lc
(
    `kv` Map(LowCardinality(String), LowCardinality(String))
)
ENGINE = Memory;
INSERT INTO map_lc select map('a', 'b');
DROP TABLE map_lc;
