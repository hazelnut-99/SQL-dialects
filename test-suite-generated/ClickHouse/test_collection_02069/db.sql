DROP TABLE IF EXISTS test02008;
CREATE TABLE test02008 (
       col Tuple(
           a Tuple(key1 int, key2 int),
           b Tuple(key1 int, key2 int)
       )
) ENGINE=Memory();
INSERT INTO test02008 VALUES (tuple(tuple(1, 2), tuple(3, 4)));
INSERT INTO test02008 VALUES (tuple(tuple(5, 6), tuple(7, 8)));
