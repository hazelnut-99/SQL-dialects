DROP TABLE IF EXISTS samples;
CREATE TABLE samples (key UInt32, value UInt32) ENGINE = MergeTree() ORDER BY key PRIMARY KEY key;
INSERT INTO samples VALUES (1, 1)(2, 2)(3, 3)(4, 4)(5, 5);
