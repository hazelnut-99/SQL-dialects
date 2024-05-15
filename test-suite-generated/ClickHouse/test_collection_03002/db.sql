DROP TABLE IF EXISTS t;
CREATE TABLE t
(
    s1 String,
    s2 String
) ENGINE = MergeTree ORDER BY s1;
