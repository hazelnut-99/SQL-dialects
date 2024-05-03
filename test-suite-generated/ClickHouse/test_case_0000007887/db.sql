DROP TABLE IF EXISTS test;
CREATE TABLE test
(
    ip IPv4 Codec(ZSTD(6)),
) ENGINE MergeTree() order by ip;
INSERT INTO test values ('1.1.1.1');
INSERT INTO test values (toIPv4('8.8.8.8'));
