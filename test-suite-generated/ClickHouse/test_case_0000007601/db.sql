DROP TABLE IF EXISTS test_table;
CREATE TABLE test_table(a Array(Int8), d Decimal32(4), c Tuple(DateTime64(3, 'UTC'), UUID)) ENGINE=Memory;
INSERT INTO test_table SELECT * FROM generateRandom('a Array(Int8), d Decimal32(4), c Tuple(DateTime64(3, \'UTC\'), UUID)', 1, 10, 2)
LIMIT 10;
DROP TABLE IF EXISTS test_table;
