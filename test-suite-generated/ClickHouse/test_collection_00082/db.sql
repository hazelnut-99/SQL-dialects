DROP TABLE IF EXISTS t2;
CREATE TABLE t2 (s String, x Array(UInt8), k UInt64) ENGINE = Join(ANY, LEFT, k);
INSERT INTO t2 VALUES ('abc', [0], 1), ('def', [1, 2], 2);
INSERT INTO t2 (k, s) VALUES (3, 'ghi');
INSERT INTO t2 (x, k) VALUES ([3, 4, 5], 4);
