DROP TABLE IF EXISTS replicated_with_sampling;
DROP TABLE IF EXISTS replacing;
CREATE TABLE replacing(d Date, x UInt32, s String) ENGINE = ReplacingMergeTree ORDER BY x PARTITION BY d;
INSERT INTO replacing VALUES ('2017-10-23', 1, 'a');
INSERT INTO replacing VALUES ('2017-10-23', 1, 'b');
INSERT INTO replacing VALUES ('2017-10-23', 1, 'c');
OPTIMIZE TABLE replacing PARTITION '2017-10-23' FINAL;
DROP TABLE replacing;
