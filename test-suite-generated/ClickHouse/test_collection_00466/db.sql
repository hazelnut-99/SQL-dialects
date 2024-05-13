DROP TABLE IF EXISTS test;
CREATE TABLE test
(
    x Nullable(Int32)
) ENGINE = Log;
INSERT INTO test VALUES(1), (0), (null);
