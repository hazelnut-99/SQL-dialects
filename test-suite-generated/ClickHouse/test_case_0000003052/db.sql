DROP TABLE IF EXISTS LOG_T;
CREATE TABLE LOG_T
(
    `fingerprint` UInt64, 
    `fields` Nested(
    name LowCardinality(String), 
    value String)
)
ENGINE = MergeTree
ORDER BY fingerprint;
INSERT INTO LOG_T VALUES (123, ['Hello', 'ProcessName'], ['World', 'node']);
