DROP TABLE IF EXISTS source_data;
CREATE TABLE source_data (
    pk Int32, sk Int32, val UInt32, partition_key UInt32 DEFAULT 1,
    PRIMARY KEY (pk)
) ENGINE=MergeTree
ORDER BY (pk, sk);
INSERT INTO source_data (pk, sk, val) VALUES (0, 0, 0), (0, 0, 0), (1, 1, 2), (1, 1, 3);
DROP TABLE IF EXISTS full_duplicates;
CREATE TABLE full_duplicates  (
    pk Int32, sk Int32, val UInt32, partition_key UInt32, mat UInt32 MATERIALIZED 12345, alias UInt32 ALIAS 2,
    PRIMARY KEY (pk)
) ENGINE=MergeTree
PARTITION BY (partition_key + 1) -- ensure that column in expression is properly handled when deduplicating. See [1] below.
ORDER BY (pk, toString(sk * 10)); -- silly order key to ensure that key column is checked even when it is a part of expression. See [1] below.
