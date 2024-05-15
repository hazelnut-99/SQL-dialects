DROP TABLE IF EXISTS test_table;
CREATE TABLE test_table(a Array(Int8), d Decimal32(4), c Tuple(DateTime64(3), UUID)) ENGINE = GenerateRandom();
DROP TABLE IF EXISTS test_table;
DROP TABLE IF EXISTS test_table_2;
CREATE TABLE test_table_2(a Array(Int8), d Decimal32(4), c Tuple(DateTime64(3, 'UTC'), UUID)) ENGINE = GenerateRandom(10, 5, 3);
