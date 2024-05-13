DROP TABLE IF EXISTS test_table;
DROP TABLE IF EXISTS numbers;
DROP TABLE IF EXISTS test_mv;
DROP TABLE IF EXISTS src;
DROP TABLE IF EXISTS dst;
DROP TABLE IF EXISTS mv;
DROP TABLE IF EXISTS dist;
CREATE TABLE test_table (key UInt32, value Decimal(16, 6)) ENGINE = SummingMergeTree() ORDER BY key;
CREATE TABLE numbers (number UInt64) ENGINE=Memory;
CREATE MATERIALIZED VIEW test_mv TO test_table (number UInt64, value Decimal(38, 6))
AS SELECT number, sum(number) AS value FROM (SELECT *, toDecimal64(number, 6) AS val FROM numbers) GROUP BY number;
INSERT INTO numbers SELECT * FROM numbers(100000);
CREATE TABLE src (n UInt64, s FixedString(16)) ENGINE=Memory;
CREATE TABLE dst (n UInt8, s String) ENGINE = Memory;
CREATE MATERIALIZED VIEW mv TO dst (n String) AS SELECT * FROM src;
INSERT INTO src SELECT number, toString(number) FROM numbers(1000);
