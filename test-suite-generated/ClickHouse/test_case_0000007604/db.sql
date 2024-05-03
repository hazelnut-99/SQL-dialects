DROP TABLE IF EXISTS test_table;
CREATE TABLE test_table(a Array(Int8), d Decimal32(4), c Tuple(DateTime64(3, 'UTC'), UUID)) ENGINE=Memory;
INSERT INTO test_table SELECT * FROM generateRandom('a Array(Int8), d Decimal32(4), c Tuple(DateTime64(3, \'UTC\'), UUID)', 1, 10, 2)
LIMIT 10;
DROP TABLE IF EXISTS test_table;
DROP TABLE IF EXISTS test_table_2;
CREATE TABLE test_table_2(a Array(Int8), b UInt32, c Nullable(String), d Decimal32(4), e Nullable(Enum16('h' = 1, 'w' = 5 , 'o' = -200)), f Float64, g Tuple(Date, DateTime('UTC'), DateTime64(3, 'UTC'), UUID), h FixedString(2)) ENGINE=Memory;
INSERT INTO test_table_2 SELECT * FROM generateRandom('a Array(Int8), b UInt32, c Nullable(String), d Decimal32(4), e Nullable(Enum16(\'h\' = 1, \'w\' = 5 , \'o\' = -200)), f Float64, g Tuple(Date, DateTime(\'UTC\'), DateTime64(3, \'UTC\'), UUID), h FixedString(2)', 10, 5, 3)
LIMIT 10;
DROP TABLE IF EXISTS test_table_2;
