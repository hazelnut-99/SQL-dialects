DROP TABLE IF EXISTS Alpha;
DROP TABLE IF EXISTS Beta;
CREATE TABLE Alpha (foo String, bar UInt64) ENGINE = Memory;
CREATE TABLE Beta (foo LowCardinality(String), baz UInt64) ENGINE = Memory;
INSERT INTO Alpha VALUES ('a', 1);
INSERT INTO Beta VALUES ('a', 2), ('b', 3);
