DROP TABLE IF EXISTS test;
CREATE TABLE test (timestamp DateTime('UTC'), i UInt8) Engine=MergeTree() PARTITION BY toYYYYMM(timestamp) ORDER BY (i);
INSERT INTO test values ('2020-05-13 16:38:45', 1);
