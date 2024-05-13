DROP TABLE IF EXISTS test_table;
CREATE TABLE test_table(a Array(Int8), d Decimal32(4), c Tuple(DateTime64(3), UUID)) ENGINE = GenerateRandom();
