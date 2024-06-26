DROP TABLE IF EXISTS mytable;
CREATE TABLE mytable
(
    timestamp        UInt64,
    insert_timestamp UInt64,
    key              UInt64,
    value            Float64
) ENGINE = ReplacingMergeTree(insert_timestamp)
    PRIMARY KEY (key, timestamp)
    ORDER BY (key, timestamp);
INSERT INTO mytable (timestamp, insert_timestamp, key, value) VALUES (1900000010000, 1675159000000, 5, 555), (1900000010000, 1675159770000, 5, -1), (1900000020000, 1675159770000, 5, -0.0002), (1900000030000, 1675159770000, 5, 0), (1900000020000, 1675159700000, 5, 555), (1900000040000, 1675159770000, 5, 0.05), (1900000050000, 1675159770000, 5, 1);
