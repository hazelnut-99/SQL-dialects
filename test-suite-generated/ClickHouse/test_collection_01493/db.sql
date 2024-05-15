DROP TABLE IF EXISTS source_data;
CREATE TABLE source_data (
    pk Int32, sk Int32, val UInt32, partition_key UInt32 DEFAULT 1,
    PRIMARY KEY (pk)
) ENGINE=MergeTree
ORDER BY (pk, sk);
INSERT INTO source_data (pk, sk, val) VALUES (0, 0, 0), (0, 0, 0), (1, 1, 2), (1, 1, 3);
