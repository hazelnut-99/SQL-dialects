DROP TABLE IF EXISTS ints;
CREATE TABLE ints (i64 Int64, i32 Int32) ENGINE = Memory;
INSERT INTO ints SELECT 1 AS i64, number AS i32 FROM numbers(2);
