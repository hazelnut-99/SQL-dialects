DROP TABLE IF EXISTS null_in_1;
CREATE TABLE null_in_1 (u UInt32, n Nullable(UInt32)) ENGINE = Memory;
INSERT INTO null_in_1 VALUES (1, NULL), (2, 2), (3, NULL), (4, 4), (5, NULL);
