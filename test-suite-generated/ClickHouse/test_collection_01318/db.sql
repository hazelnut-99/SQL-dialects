DROP TABLE IF EXISTS table_for_ttl;
CREATE TABLE table_for_ttl(
  d DateTime,
  key UInt64,
  value String)
ENGINE = MergeTree()
ORDER BY tuple()
PARTITION BY key;
INSERT INTO table_for_ttl SELECT now() - INTERVAL 2 YEAR, 1, toString(number) from numbers(1000);
INSERT INTO table_for_ttl SELECT now() - INTERVAL 2 DAY, 3, toString(number) from numbers(2000, 1000);
INSERT INTO table_for_ttl SELECT now(), 4, toString(number) from numbers(3000, 1000);
OPTIMIZE TABLE table_for_ttl FINAL;
OPTIMIZE TABLE table_for_ttl FINAL;
